#!/bin/sh

message="commit"
echo "Git pull first please!\nCommit message:"
read message

git add . && git commit -m $message && git push

cs () {
    cd "$@" && ls
}
