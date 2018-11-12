files=`ls bypass*`;
test -f info.txt && rm info.txt
for file in $files;do
    num=`sed -n '5p' $file`;
  
    echo "$file $num" >> info.txt;
    echo "succeed get num";

    
done