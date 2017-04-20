delaytime=20 ;延迟时间
Loop, Read, 目录.txt
{
  ;msgbox,%A_LoopReadLine% 
  ;len:= strlen(A_LoopReadLine)
  ;获取tab键字符串位置
  pos:=instr(A_LoopReadLine,chr(9))
  st:=substr(A_LoopReadLine,1,pos-1)
  st2:=substr(A_LoopReadLine,pos+1)
  st3:=st2+14
  ;msgbox  第一个变量%st%第二个变量%st2%第三个变量%st3%啦啦
  Clipboard=%st%
ifWinExist, fk.pdf - Adobe Acrobat Pro
{
    IfWinNotActive,fk.pdf - Adobe Acrobat Pro
	{
		WinActivate
		WinMaximize ;最大化
	}
	;获取页面焦点,定位到具体页面
	ControlFocus Edit5, fk.pdf - Adobe Acrobat Pro
	;click 338,102
	sleep  delaytime
	send  ^a%st3%
	sleep  delaytime
	send {enter}
	sleep  delaytime
	send ^b
	sleep  delaytime+100
	send ^v
	sleep  delaytime+300
	;send {enter}
	sleep  delaytime+100
} 
}
