
TMP=$IFS
IFS=,
while read comment check expected_result
do
  echo "($comment) ($check) ($expected_result)"
  grep "$check" read_rules.sh
  # grep " while " read_rules.sh
  echo $?
done < rules-pr.md

IFS=$TMP
