HEAD=$(git rev-parse --short HEAD)

if [ "$1" == "$HEAD" ]
then
  cat ./brakeman-large.sarif
fi
