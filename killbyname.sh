name=$1
ps -elf|grep $name|sed 's/  */ /g'|cut -d ' ' -f4|xargs kill -9
