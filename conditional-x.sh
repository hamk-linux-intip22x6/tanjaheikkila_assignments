#!/bin/sh

message="commit"
echo "Commit message:"
read message

git add . && git commit -m $message
git commit || echo "Git commit failed"

git push

cs () {
    cd "$@" && ls
}
