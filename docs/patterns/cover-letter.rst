Cover-Letter
============

`Source Code <https://github.com/iandennismiller/diamond-patterns/tree/master/patterns/cover-letter>`_

A LaTeX cover letter, like for a job application, pitch, or proposal.

Setup
-----

::

    diamond pattern cover-letter

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
