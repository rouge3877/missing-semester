#!/usr/bin/env zsh
htmlzip () {
    find . -type f -name "*.html" -print0 | xargs -d "\0" zip -r html.zip
}
