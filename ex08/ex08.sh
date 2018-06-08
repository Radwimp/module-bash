#!bin/bash
file=$1
if [ $# -eq 0 ] || [ $# -gt 1 ];then
  echo "Too many(few) arguments"
  exit 1
fi
if ! [ -f "$file" ];then
  echo "Error.."
  exit 1
fi
var=""
let var+=$(grep -o 0 $file | wc -l)
let var+=" zeroes, "
let var+=$(grep -o 1 $file | wc -l)
let var+=" ones, "
let var+=$(grep -o 2 $file | wc -l)
let var+=" twoes, "
let var+=$(grep -o 3 $file | wc -l)
let var+=" threes, "
let var+=$(grep -o 4 $file | wc -l)
let var+=" fours, "
let var+=$(grep -o 5 $file | wc -l)
let var+=" fives, "
let var+=$(grep -o 6 $file | wc -l)
let var+=" sixs, "
let var+=$(grep -o 7 $file | wc -l)
let var+=" sevens, "
let var+=$(grep -o 8 $file | wc -l)
let var+=" eights, "
let var+=$(grep -o 9 $file | wc -l)
let var+=" nines"
echo $var