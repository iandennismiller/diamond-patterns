Letter
======

`Source Code <https://github.com/iandennismiller/diamond-patterns/tree/master/patterns/letter>`_

A LaTeX formal letter. Basic but complete. Address from/to, phone, email.

Setup
-----

::

    diamond pattern letter

Build the article with LaTeX and open the resulting PDF:

::

    make
    open *.pdf

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
