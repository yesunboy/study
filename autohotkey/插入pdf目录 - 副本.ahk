delaytime=20 ;�ӳ�ʱ��
;�ļ�����
filename=11.txt
;���ڱ���
titlename=33.pdf - Adobe Acrobat Pro
;ʵ��ҳ����Ŀ¼ҳ���Ĳ�
offsetcount=18
Loop, Read, %filename%
{
   ;�Ƴ��ַ������˵Ŀո���Ʊ��
rs=%A_LoopReadLine% 
;���ұ߿�ʼ��ո��һ�γ��ֵ�λ��
;StringGetPos, pos, rs, %A_Space% ,R#
pos:=instr(rs,chr(9))
;��ȡ��ǩ����
st:=substr(rs,1,pos-1)
;��ȡҳ��
st2:=substr(rs,pos+1)
;��ʵ��ҳ����ƫ��
st3:=st2+offsetcount
  ;msgbox,%A_LoopReadLine% 
  ;len:= strlen(A_LoopReadLine)
  ;��ȡtab���ַ���λ��
  ;pos:=instr(A_LoopReadLine,chr(9))
  ;st:=substr(A_LoopReadLine,1,pos-1)
  ;st2:=substr(A_LoopReadLine,pos+1)
  ;st3:=st2+14
  ;msgbox  ��һ������%st%�ڶ�������%st2%����������%st3%����
  Clipboard=%st%
ifWinExist, %titlename%
{
    IfWinNotActive,%titlename%
	{
		WinActivate
		WinMaximize ;���
	}
	;��ȡҳ�潹��,��λ������ҳ��
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
