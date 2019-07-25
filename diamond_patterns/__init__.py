# -*- coding: utf-8 -*-
# diamond-patterns (cc) 2019 Ian Dennis Miller

import os
import glob
import json
import arrow
import requests


class Pattern:
    def __init__(self):
        self.manifest_file = os.path.join(os.path.expanduser("~"), ".diamond-patterns-manifest.json")
        self.manifest_url = 'https://raw.githubusercontent.com/iandennismiller/diamond-patterns/develop/patterns/manifest.json'
        with open(self.manifest_file, 'r') as f:
            self.manifest = json.load(f)

    def run_scaffold(pattern, testing=False):
        if ctx.obj['pattern'] in pkg_resources.resource_listdir('diamond_patterns', 'patterns'):
            filename = pkg_resources.resource_filename('diamond_patterns', 'patterns')
            pathname = os.path.dirname(os.path.abspath(diamond_patterns.__file__))

            # if pattern exists, remove it
            if os.path.isdir(".pattern"):
                dir_util.remove_tree(".pattern")

            # create a local copy of the pattern
            full_path = os.path.join(pathname, filename, ctx.obj['pattern'])
            print(full_path)
            dir_util.copy_tree(full_path, ".pattern")

            # invoke mr.bob with the local copy of the pattern
            if testing:
                cmd = "mrbob -w -n -O . .pattern"
            else:
                cmd = "mrbob -w -O . .pattern"
            os.system(cmd)

            # clean up after ourselves
            if os.path.isdir(".pattern"):
                dir_util.remove_tree(".pattern")
        else:
            print("unrecognized pattern: {0}".format(ctx.obj['pattern']))


    def download_manifest(self):
        r = requests.get(self.manifest_url)
        if r.status_code == 200:
            with open(self.manifest_file, 'w') as f:
                f.write(r.text)
        else:
            print("ERROR: failed to download {}".format(self.manifest_url))


    def ensure_manifest(self):
        if not os.path.isfile(self.manifest_file):
            print("WARNING: {} not found".format(self.manifest_file))
            self.download_manifest()

    def write_manifest(self):
        h = {
            'timestamp': arrow.utcnow().timestamp,
            'patterns': [f.split('/')[1] for f in glob.glob("patterns/*/")],
            'url': self.manifest_url,
        }

        with open('patterns/manifest.json', 'w') as f:
            f.write(json.dumps(h, indent=2, sort_keys=True))
