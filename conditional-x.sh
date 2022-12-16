#!/bin/sh

message="commit"
echo "Commit message:"
read message

git add . && git commit -m $message && git push
git commit || echo "Git commit failed"

cs () {
    cd "$@" && ls
}
