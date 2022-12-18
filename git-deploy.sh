#!/bin/sh

message="commit"
echo "Pull first, please!\nCommit message:"
read message

git add . && git commit -m ${message} && git push

cs () {
    cd "$@" && ls
}
