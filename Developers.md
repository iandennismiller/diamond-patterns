# Diamond Patterns - Development

This document helps manage the development process.

## Release process

1. update version in `diamond_patterns/__meta__.py`

2. commit to git

Stage the changes and push

    git add diamond_patterns/__meta__.py
    git commit -am "release"

3. push to pypi

Use pythonic release manager

    make release

4. update homebrew install

Find the new URL for the release on pypi

https://pypi.python.org/pypi/diamond-patterns

Download it and obtain its sha256 checksum.

    wget https://pypi.python.org/packages/.../diamond-patterns-x.x.x.tar.gz
    shasum -a 256 diamond-patterns-x.x.x.tar.gz

Update `etc/diamond-patterns.rb` with this URL and checksum.

    git add etc/diamond-patterns.rb
    git commit -am "homebrew release"
    git push
