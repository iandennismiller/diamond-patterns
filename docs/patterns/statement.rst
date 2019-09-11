Statement
=========

`Source Code <https://github.com/iandennismiller/diamond-patterns/tree/master/patterns/statement>`_

A LaTeX statement, based upon the article class.

Setup
-----

::

    diamond pattern statement

Then make it:

::

    make

Configuration
-------------

In the ``Makefile``, the variable ``TEX_FILES`` controls which files are rendered.

Requirements
------------

::

    sudo apt install \
        texlive-publishers \
        texlive-bibtex-extra \
        texlive-fonts-extra \
        latexmk
