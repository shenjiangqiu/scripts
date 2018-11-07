test ! -d cons && mkdir cons;
test ! -d cons/con && mkdir cons/con;
test ! -d cons/bypass && mkdir cons/bypass;
apps=`cat apps.txt`

for app in $apps:
do
    cd $app;
    isEnter=$?;
    
    if [ $isEnter == "0" ];then
        cp con.txt ../cons/con/con_$app.txt;
        cp bypass_stat.txt ../cons/bypass/bypass_$app.txt;
        cd ..;
    else
        echo "fail to enter";
    fi
    
done

