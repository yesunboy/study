delaytime=20 ;延迟时间
;文件名称
filename=11.txt
;窗口标题
titlename=33.pdf - Adobe Acrobat Pro
;实际页数与目录页数的差
offsetcount=18
Loop, Read, %filename%
{
   ;移除字符串两端的空格和制表符
rs=%A_LoopReadLine% 
;从右边开始查空格第一次出现的位置
;StringGetPos, pos, rs, %A_Space% ,R#
pos:=instr(rs,chr(9))
;截取书签内容
st:=substr(rs,1,pos-1)
;截取页数
st2:=substr(rs,pos+1)
;与实际页数的偏移
st3:=st2+offsetcount
  ;msgbox,%A_LoopReadLine% 
  ;len:= strlen(A_LoopReadLine)
  ;获取tab键字符串位置
  ;pos:=instr(A_LoopReadLine,chr(9))
  ;st:=substr(A_LoopReadLine,1,pos-1)
  ;st2:=substr(A_LoopReadLine,pos+1)
  ;st3:=st2+14
  ;msgbox  第一个变量%st%第二个变量%st2%第三个变量%st3%啦啦
  Clipboard=%st%
ifWinExist, %titlename%
{
    IfWinNotActive,%titlename%
	{
		WinActivate
		WinMaximize ;最大化
	}
	;获取页面焦点,定位到具体页面
	ControlFocus Edit5, %titlename%
	;click 338,102
	sleep  delaytime
	send  ^a%st3%
	sleep  delaytime
	send {enter}
	sleep  delaytime
	send ^b
	sleep  delaytime+100
	send ^v
	;send %st%
	sleep  delaytime+300
	;send {enter}
	sleep  delaytime+100
} 
}
