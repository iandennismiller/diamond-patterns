#!/usr/bin/env python
# -*- coding: utf-8 -*-
# diamond-patterns (cc) 2019 Ian Dennis Miller

# Run this in the root of the project:
# make manifest
# This will produce a new manifest file in diamond_patterns/patterns

import sys
sys.path.insert(0, '.')
from diamond_patterns import Pattern

p = Pattern()
p.write_manifest()
print("ok")
