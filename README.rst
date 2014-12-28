Install
=======

* On Ubuntu :

::

    $ sudo apt-get install python-pip
    $ sudo apt-get install python-dev
    $ sudo apt-get install libfreetype6-dev
    $ sudo apt-get install texlive texlive-lang-french texlive-latex-extra

    $ sudo pip install virtualenv
    $ virtualenv -p /usr/bin/python2.7 venv
    $ source venv/bin/activate
    $ pip install -r requirements.txt
    $ pip install matplotlib

* Fix bug in mathplotlib sphinx extension :

::

    in file : project/venv/lib/python2.7/site-packages/matplotlib-1.4.2-py2.7-linux-x86_64.egg/matplotlib/sphinxext/mathmpl.py

    find line (70) : name = 'math-%s' % md5(latex.encode()).hexdigest()[-10:]
    replace by :     name = 'math-%s' % md5(latex.encode('utf-8')).hexdigest()[-10:]

* Fix math formulas too small on epub :

::

    in file : project/venv/lib/python2.7/site-packages/matplotlib-1.4.2-py2.7-linux-x86_64.egg/matplotlib/sphinxext/mathmpl.py

    find        : dpi=100
    replace by  : dpi=200 or more


Generate HTML, PDF and EPUB version
=====================================

Generate HTML version (BUILD IS VERY UGLY, configuration broken to improve the EPUB format) :

::

    $ make html SPHINXOPTS="-t html"

Generate PDF version :

::

    $ make latexpdf SPHINXOPTS="-t latex"

Generate EPUB version :

::

    $ make epub SPHINXOPTS="-t epub"
