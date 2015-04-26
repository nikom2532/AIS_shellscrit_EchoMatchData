#!/bin/csh

set start_line=`grep -n "start" input | sed 's/:.*//g'`

set start_line=`expr ${start_line} + 1`
set finish="0"

while ($finish == 0)
	set data=`cat input | sed -n "${start_line}p"`
	
	if ( $data != "" ) then
		@ finish = "1"
	else
		@ start_line=`expr ${start_line} + 1`
	endif
end

echo "${start_line}"

set end_line=`expr ${start_line} + 1`
@ finish="0"

while ($finish == 0)
	set data=`cat input | sed -n "${end_line}p"`
	
	if ( $data == "exit" ) then
		@ finish = "1"
	else
		@ end_line=`expr ${end_line} + 1`
	endif
end

echo "${end_line}"


