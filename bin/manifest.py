#!/usr/bin/env python
# -*- coding: utf-8 -*-
# diamond-patterns (cc) 2019 Ian Dennis Miller

# Run this in the root of the project:
# make manifest
# This will produce a new manifest file in diamond_patterns/patterns

import os
import json
import glob
import arrow

h = {
    'timestamp': arrow.utcnow().timestamp,
    'patterns': [f.split('/')[2] for f in glob.glob("diamond_patterns/patterns/*/")],
}

with open('diamond_patterns/patterns/manifest.json', 'w') as f:
    f.write(json.dumps(h, indent=2, sort_keys=True))

print("ok")
