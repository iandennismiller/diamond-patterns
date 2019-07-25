# -*- coding: utf-8 -*-
# diamond-patterns (cc) 2019 Ian Dennis Miller

import os
import glob
import json
import arrow
import requests


class Pattern:
    def __init__(self):
        self.manifest_file = os.path.join(
            os.path.expanduser("~"), 
            ".diamond-patterns-manifest.json"
        )

        with open(self.manifest_file, 'r') as f:
            self.manifest = json.load(f)
        self.patterns = self.manifest['patterns']

        self.manifest_url = 'https://raw.githubusercontent.com/iandennismiller/diamond-patterns/develop/patterns/manifest.json'
        self.archive_url = 'https://github.com/iandennismiller/diamond-patterns/archive/develop.zip#diamond-patterns-develop/patterns'

    def run_scaffold(self, pattern, interactive=True):
        if pattern not in self.patterns:
            print("unrecognized pattern: {0}".format(pattern))
            return

        pattern_url = "{}/{}".format(self.archive_url, pattern)

        if interactive:
            cmd = "mrbob -w -O . {}".format(pattern_url)
        else:
            cmd = "mrbob -w -n -O . {}".format(pattern_url)
        os.system(cmd)

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
