Development
===========

This document helps manage the development process.

https://pypi.python.org/pypi/diamond-patterns

Release process
---------------

Merge develop to master
^^^^^^^^^^^^^^^^^^^^^^^

::

    checkout master
    git merge develop

Update Version
^^^^^^^^^^^^^^

Update version in `diamond_patterns/__meta__.py` to be the newly-released version.

Commit to git
^^^^^^^^^^^^^

Stage the changes and push

::

    git add diamond_patterns/__meta__.py
    git commit -am "release"

Push to pypi
^^^^^^^^^^^^

Use pythonic release manager

::

    make release
