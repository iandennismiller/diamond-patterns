Article
=======

A LaTeX article with sections and graphics.

Setup
-----

Scaffold the article pattern in the current directory:

::

    diamond scaffold article

Build the article with LaTeX and open the resulting PDF:

::

    make
    open .build/*.pdf

Requirements
------------

::

    sudo apt-get install \
        texlive-publishers \
        texlive-bibtex-extra
