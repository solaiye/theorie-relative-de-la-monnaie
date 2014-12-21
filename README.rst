Install
=======

* On Ubuntu :

::

    $ sudo apt-get install python-pip
    $ sudo apt-get install python-dev
    $ sudo apt-get install libfreetype6-dev

    $ sudo pip install virtualenv
    $ virtualenv -p /usr/bin/python2.7 venv
    $ source venv/bin/activate
    $ pip install -r requirements.txt
    $ pip install matplotlib

Generate HTML, PDF and EPUB version
=====================================

Generate HTML version :

::

    $ make html

Generate PDF version :

::

    $ make latexpdf

Generate EPUB version :

::

    $ make epub
