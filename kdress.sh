#!/bin/bash

function _help(){
  echo "#"
  echo "# Usage: ./kdress.sh [--help|--version] <vmlinuz> <vmlinux> <System.map>"
  echo "#"
  echo "#  --help     this message"
  echo "#"
}


### check routine
continue=0
case $1 in

--help)
  _help
;;

*)
  continue=1
esac


if [ $# != 3 ]; then
  _help
  continue=0
fi


if [ $continue == 0 ]; then
  echo "Quit"
  echo ""
  exit 0
fi


./extract-vmlinux.sh $1 > $2
./build_ksyms $2 /tmp/.vmlinux.abc $3
mv /tmp/.vmlinux.abc $2


