delaytime=20 ;�ӳ�ʱ��
Loop, Read, Ŀ¼.txt
{
  ;msgbox,%A_LoopReadLine% 
  ;len:= strlen(A_LoopReadLine)
  ;��ȡtab���ַ���λ��
  pos:=instr(A_LoopReadLine,chr(9))
  st:=substr(A_LoopReadLine,1,pos-1)
  st2:=substr(A_LoopReadLine,pos+1)
  st3:=st2+14
  ;msgbox  ��һ������%st%�ڶ�������%st2%����������%st3%����
  Clipboard=%st%
ifWinExist, fk.pdf - Adobe Acrobat Pro
{
    IfWinNotActive,fk.pdf - Adobe Acrobat Pro
	{
		WinActivate
		WinMaximize ;���
	}
	;��ȡҳ�潹��,��λ������ҳ��
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
