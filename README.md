# Relative Theory of Money (TRM)

Relative Theory of Money (TRM) is a theory about a money system based
on a Universal Dividend calculated from the human life expectancy.
It demonstrate that only one mathematical solution exists to create a "libre money".

You can [read it online here](http://en.trm.creationmonetaire.info/)

You can [download files here](https://github.com/libre-money-projects/theorie-relative-de-la-monnaie/releases)

Text licensed under [GPL version 3](http://www.gnu.org/licenses/gpl.html)

# Théorie Relative de la Monnaie (TRM)

La Théorie Relative de la Monnaie est une théorie décrivant un système monétaire
basé sur un Dividende Universel calculé à partir de l'espérance de vie humaine.
Elle démontre qu'il n'existe qu'une seule solution mathématique pour créer une "monnaie libre".

Vous pouvez [la lire en ligne ici](http://trm.creationmonetaire.info/)

Vous pouvez [télécharger les fichiers ici](https://github.com/libre-money-projects/theorie-relative-de-la-monnaie/releases)

Texte sous licence [GPL version 3](http://www.gnu.org/licenses/gpl.html)


## Install repository

Require Sphinx 1.3+

- Ubuntu 14.04:

```bash
    $ sudo apt-get install python-pip
    $ sudo apt-get install python-dev
    $ sudo apt-get install libfreetype6-dev
    $ sudo apt-get install texlive texlive-lang-french texlive-latex-extra texlive-latex-recommended
    $ sudo apt-get install dvipng

    $ sudo pip install virtualenv
    $ virtualenv -p /usr/bin/python2.7 venv
    $ source venv/bin/activate
    $ pip install -vv -r requirements.txt
```

- Fedora:

```bash

    $ sudo dnf install python-pip python-devel freetype-devel \
      texlive texlive-latex dvipng python-matplotlib numpy \
      python-numpydoc ipython python-sphinx python-ipython-sphinx
```

## Generate all languages

Generate french and english version in ``build/fr_FR`` and ``build/en_US`` folders:

```bash
    $ ./build.sh
```

Generate original french version in ``build/fr_FR`` folder:

```bash
    $ ./build_fr_FR.sh
```

Generate translated english version in ``build/en_US`` folder:

```bash
    $ ./build_en_US.sh
```

## Generate HTML, PDF and EPUB version

Generate HTML version:

```bash
    $ make html SPHINXOPTS="-t html"
```

Generate PDF version:

```bash
    $ make latexpdf SPHINXOPTS="-t latex"
```

Generate EPUB version :

```bash
    $ make epub SPHINXOPTS="-t epub"
```
## Translation in english

```bash
    $ sudo pip install sphinx-intl
```

Generate pot files from rst files in build/locale

```bash
    $ make gettext
```

Generate po files from pot files in source/locale
(use english (United-States) with label en_US)

```bash
    $ sphinx-intl update -p build/locale -d source/locale/ -l en_US
```

Create mo files

```bash
    $ sphinx-intl build --locale-dir source/locale
```
Generate translated build:

```bash
    $ ./build_all_en_US.sh
```

## Transifex platform

To sync with a Transifex project :

```bash
    $ pip install transifex-client
```

Add pot files index in .tx/config

```bash
    $ sphinx-intl update-txconfig-resources --pot-dir build/locale --locale-dir source/locale --transifex-project-name french-to-english
```

Replace "en" language by "fr" in .tx/config

```bash
    $ source_lang = fr
```

Send the pot source files to the transifex server

```bash
    $ tx push -s
```

Get a translated po file
Add -f to force

```bash
    $ tx pull -l en_US -r french-to-english.index
```
