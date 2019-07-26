Installation
============

UNIX
----

Install on Linux, BSD, or OS X.  Supports system-wide installation and python virtual environments.

::

    pip install diamond-patterns

Windows
-------

**Diamond-patterns** installs system-wide with Administrator privileges.
The following process has been tested with Window 10.

::

    start-process powershell –verb runAs
    easy_install -U mr.bob==0.1.2
    pip install diamond-patterns

What those commands do:

1. Launch Power Shell with Administrator privileges.
2. Manually install ``mr.bob``.
3. Install ``diamond-patterns`` with ``pip``.
