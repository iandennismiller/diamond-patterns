Development
===========

This document helps manage the development process.

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

Update homebrew install
^^^^^^^^^^^^^^^^^^^^^^^

Find the new URL for the release on pypi

https://pypi.python.org/pypi/diamond-patterns

Download it and obtain its sha256 checksum.

::

    wget https://pypi.python.org/packages/.../diamond-patterns-x.x.x.tar.gz
    shasum -a 256 diamond-patterns-x.x.x.tar.gz

Update `etc/diamond-patterns.rb` with this URL and checksum.

::

    git add etc/diamond-patterns.rb
    git commit -am "homebrew release"
    git push
