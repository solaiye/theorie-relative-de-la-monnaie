Install
=======

- Ubuntu:

::

    $ sudo apt-get install python-pip
    $ sudo apt-get install python-dev
    $ sudo apt-get install libfreetype6-dev
    $ sudo apt-get install texlive texlive-lang-french texlive-latex-extra
    $ sudo apt-get install dvipng

    $ sudo pip install virtualenv
    $ virtualenv -p /usr/bin/python2.7 venv
    $ source venv/bin/activate
    $ pip install -r /path/to/theorie-relative-de-la-monnaie/requirements.txt
    $ pip install matplotlib

- Fedora:

::

    $ sudo dnf install python-pip python-devel freetype-devel \
      texlive texlive-latex dvipng python-matplotlib numpy \
      python-numpydoc ipython python-sphinx python-ipython-sphinx


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

You can download files from the `latest release <https://github.com/vtexier/theorie-relative-de-la-monnaie/releases>`_


Translation in english
======================

::

    $ sudo pip install sphinx-intl
    $ pip install transifex-client

Generate pot files in build/locale

::

    $ make gettext

Generate po files in source/locale
(use english (United-States) with label en_US)

::

    $ sphinx-intl update -p build/locale -d source/locale/ -l en_US

Add pot files index in .tx/config

::

    $ sphinx-intl update-txconfig-resources --pot-dir build/locale --locale-dir source/locale --transifex-project-name french-to-english

Replace "en" language by "fr" in .tx/config

::

    $ source_lang = fr

Send the pot source files to the transifex server

::

    $ tx push -s

Get a translated po file
Add -f to force

::

    $ tx pull -l en_US -r french-to-english.index

Create mo files

::

    $ sphinx-intl build --locale-dir source/locale

Generate translated html document :

::

    $ make html SPHINXOPTS="-t html -D language='en_US'"
