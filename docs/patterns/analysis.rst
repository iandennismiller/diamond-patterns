Analysis
========

`Source Code <https://github.com/iandennismiller/diamond-patterns/tree/master/patterns/analysis>`_

An R project suitable for data analysis.

Pattern
-------

::

    diamond pattern analysis

These are the files in R/*

- init: loaded by reports. Often loads data from canonical, scores, describes, and analyzes
- includes: load all libraries
- importing: responsible for loading all the raw, non-canonical data sources
- scoring: based on imported data, calculate scores
- canonical: creates the canonical.csv data file that subsequent steps are based upon
- subsets: it is often useful to arrange subsets of data prior to description
- descriptives: summarize scored data
- analysis
