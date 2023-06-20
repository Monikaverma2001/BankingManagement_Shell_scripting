echo "SHORTEST JOB FIRST"
echo "Enter the burst time of process 1"
read a
echo "Enter the burst time of process 2"
read b
echo "Enter the burst time of process 3"
read c
if [ $a -lt $b ] && [ $a -lt $c ]
 then
     wta=0
     if [ $b -lt $c ]
	then 
	    wtb=$a
	    wtc=`expr $a + $b`
    else
            wtc=$a
	    wtb=`expr $a + $c`
     fi
elif [ $b -lt $a ] && [ $b -lt $c ]
 then
     wtb=0
     if [ $a -lt $c ]
        then
            wta=$b
	    wtc=`expr $b + $a`
     else
            wtc=$b
	    wta=`expr $b + $c`
     fi
elif [ $c -lt $a ] && [ $c -lt $b ]
 then
     wtc=0
     if [ $a -lt $b ]
        then
            wta=$c
	    wtb=`expr $c + $a`
     else
            wtb=$c
	    wta=`expr $c + $b`
     fi
fi
echo "The waiting time for the process 1:$wta"
echo "The waiting time for the process 2:$wtb"
echo "The waiting time for the process 3:$wtc"
echo "Average Waiting Time"
d=` expr $wta + $wtb + $wtc`
avg=` expr $d/3 | bc -l`
echo $avg

