#!/bin/csh


set start_line=`grep -n "start" input | sed 's/:.*//g'`

set start_line=`expr ${start_line} + 1`
set finish=0

while ($finish == 1)
	
	set data=`cat input | sed -n "${start_line}p"`
	
	if ( $data != "" )
		#set data=`cat input`
	end
end


echo "${data}"
