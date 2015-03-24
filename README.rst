Install
=======

- Dependencies:

  - On Ubuntu:

::

    $ sudo apt-get install python-pip
    $ sudo apt-get install python-dev
    $ sudo apt-get install libfreetype6-dev
    $ sudo apt-get install texlive texlive-lang-french texlive-latex-extra
    $ sudo apt-get install dvipng


  - On Fedora:

::

    $ su -c 'yum install python-pip python-devel freetype-devel texlive texlive-latex dvipng'

- Install:

::

    $ sudo pip install virtualenv
    $ virtualenv -p /usr/bin/python2.7 venv
    $ source venv/bin/activate
    $ pip install -r requirements.txt
    $ pip install matplotlib

Generate all (copy pdf and epub in html folder)
======================================================

::

    $ ./build_all.sh

Generate HTML, PDF and EPUB version
===================================

Generate HTML version :

::

    $ make html SPHINXOPTS="-t html"

Generate PDF version :

::

    $ make latexpdf SPHINXOPTS="-t latex"

Generate EPUB version :

::

    $ make epub SPHINXOPTS="-t epub"


Download generated files
========================

You can just download files from the `latest release <https://github.com/vtexier/theorie-relative-de-la-monnaie/releases>`_
