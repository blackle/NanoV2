SUM="0"
for file in `ls *.txt | sort`
do
  COUNT=`cat $file | sed 's/--/ /g;' | wc -w `
  echo $COUNT " $file"
  SUM=$((SUM + COUNT))
done
echo $SUM " total" 