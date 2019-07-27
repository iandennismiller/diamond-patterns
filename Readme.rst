Diamond-Patterns
================

**Diamond-Patterns** are patterns for knowledge work.  Use patterns to go faster.

.. image:: https://img.shields.io/github/stars/iandennismiller/diamond-patterns.svg?style=social&label=GitHub
    :target: https://github.com/iandennismiller/diamond-patterns

.. image:: https://img.shields.io/pypi/v/diamond-patterns.svg
    :target: https://pypi.python.org/pypi/diamond-patterns

.. image:: https://readthedocs.org/projects/diamond-patterns/badge/?version=latest
    :target: http://diamond-patterns.readthedocs.io/en/latest/?badge=latest
    :alt: Documentation Status

.. .. image:: https://travis-ci.org/iandennismiller/diamond-patterns.svg?branch=master
..     :target: https://travis-ci.org/iandennismiller/diamond-patterns

.. .. image:: https://coveralls.io/repos/github/iandennismiller/diamond-patterns/badge.svg?branch=master
..     :target: https://coveralls.io/github/iandennismiller/diamond-patterns?branch=master

**Diamond-Patterns** is a collection of patterns, along with software for applying those patterns to a directory.
Patterns consist of code templates and documentation that describes how to use each one.
There are patterns for several kinds of knowledge work: documents, projects, presentations, software, websites, and more.
See `the list of available patterns <https://diamond-patterns.readthedocs.io/en/latest/patterns.html>`_.

Usage
-----

The ``diamond`` command is used to control **Diamond-Patterns**.

To keep each project separate, create a sub-directory for each pattern.
`Project-System <https://project-system.readthedocs.io/en/latest/>`_ can help manage these sub-directories.

pattern
^^^^^^^

Apply the ``letter`` pattern to the current directory:

::

    diamond pattern letter

list
^^^^

List all available patterns:

::

    diamond list

docs
^^^^

View documentation for ``letter`` pattern:

::

    diamond docs letter
    diamond docs --web letter

help
^^^^

Command line help:

::

    diamond --help
    diamond pattern --help

Installation
------------

Install Diamond-Patterns with Python pip.

::

    pip install diamond-patterns

`Installation documentation <https://diamond-patterns.readthedocs.io/en/latest/install.html>`_ is available online.

Online Resources
----------------

- `Documentation <http://diamond-patterns.readthedocs.io/>`_
- `GitHub Project Page <http://github.com/iandennismiller/diamond-patterns>`_
- `Python Project on PyPi <http://pypi.python.org/pypi/Diamond-Patterns>`_
