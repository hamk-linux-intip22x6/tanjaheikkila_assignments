#!/bin/sh

message="commit"
echo "Remember to pull first!\nCommit message:"
read message

git add . && git commit -m $message && git push

cs () {
    cd "$@" && ls
}
