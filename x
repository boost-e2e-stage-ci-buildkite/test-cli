a () {
  declare i=$1
  echo $(($1%2))
}

a 0
a 1
a 2
