;GoldenDict ������[AHK]
;version 0.9
;allor@sian.cn
;2016-01-08
;GUI���������������д��պ����
;========ʹ��˵��========
;pause�� ����/ͣ�� �ű�
;�����ѡ��˫��ѡ�ʷ���



Pause::Suspend
~LButton::
CoordMode, Mouse, Screen
SetKeyDelay 0, 10
c := 0

MouseGetPos, x1, y1
KeyWait, LButton
MouseGetPos, x2, y2

if (x1<>x2 or y1<>y2) {
	gosub, Copy
}
else if (A_priorHotKey = "~LButton" and A_TimeSincePriorHotkey < 400){
	gosub, Copy
}
return

Copy:
c := 1
Send ^c
return

OnClipboardChange:
if (c) {
	Send ^{c 2}
;	MsgBox %clipboard%
}
return