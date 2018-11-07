test ! -d cons && mkdir cons;
test ! -d cons/con && mkdir cons/con;
test ! -d cons/bypass && mkdir cons/bypass;
apps=`cat apps.txt`
action=$1
if [ "$action" == "clean" ];then
    echo "clean";
fi;


for app in $apps;
do
    isEnter="1";
    test -d $app && isEnter="0";  
    if [ $isEnter == "0" ];then
        echo "entering $app";
        cd $app;
        cp con.txt ../cons/con/con_$app.txt;
        cp bypass_stat.txt ../cons/bypass/bypass_$app.txt;
        cd ..;
    else
        echo "fail to enter @$app@";
    fi
done

