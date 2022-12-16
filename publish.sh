  #!/bin/sh
  START_TIME=$SECONDS
  
  # Get the name of the current Git branch and then ensure that only
  # the master Git branch is deployable to production by this script.
  branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
  
  if [ "$branch" == "master" ]
  then
    echo "Compiling and deploying $branch to production..."
    
    rake generate
    
    rsync -avz public/ mywebsite@myserver.example.com:~/httpdocs/
  
    ELAPSED_TIME=$(($SECONDS - $START_TIME))
    echo "\nFinished in $ELAPSED_TIME seconds.\n\n"
  else
    echo "Will not publish from a branch other than master to production.\nPlease merge your changes into master and try again.\n\n"
  fi
