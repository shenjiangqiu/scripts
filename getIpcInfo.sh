files=`ls con*`;
test -e info.txt && rm info.txt;

for file in $files;do
    ipc=`cat $file|grep gpu_tot_ipc|tail -n1|awk ' {print $3}';`
    echo "$file $ipc">>info.txt;
done
