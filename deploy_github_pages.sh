#!/usr/bin/env bash
current_dir=$(pwd);
set -e && \
cd ./build/ && \
rm -r doctrees && \
rm -r epub && \
rm -r latex && \
rm -r plot_directive && \
touch .nojekyll && \
remote_repo="https://${GH_TOKEN}@${GH_REF}" && \
remote_branch="gh-pages" && \
git init && \
git config user.name "Travis CI" && \
git config user.email "nobody@nobody.org" && \
git add . && \
git commit -m'build' && \
git push --force $remote_repo master:$remote_branch && \
rm -fr .git && \
cd ${current_dir}
