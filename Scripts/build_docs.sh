
#!/bin/bash

# Docs by jazzy
# https://github.com/realm/jazzy
# ------------------------------

if which jazzy >/dev/null; then
    git submodule update --remote

    jazzy \
        --clean \
        --min-acl internal \
        --author 'Luke McDonald' \
        --author_url 'https://github.com/devvman/client-ios-apa.git' \
        --github_url 'https://github.com/devvman/client-ios-apa.git' \
        --source-directory 'client-ios-apa/' \
        --readme 'client-ios-apa/README.md' \
        --output 'docs/'

    ./scripts/cleanup_docs.sh
    mv -f ./docs/* ./
    rm -R docs

    exit
else
    echo "
    Error: jazzy not installed! <https://github.com/realm/jazzy>
    Install: gem install jazzy
    "
    exit 1
fi
