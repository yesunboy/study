

Loop, Read, 11.txt
{


  ;msgbox,%A_LoopReadLine%
  ;�Ƴ��ַ������˵Ŀո���Ʊ��
rs=%A_LoopReadLine% 
;���ո�ָ��ַ���,�浽����
 ;StringSplit, word_array, rs, %A_Space%, .
 ;Loop, %word_array%
;{
;    this_color := word_array%a_index%
 ;   MsgBox, Color number %a_index% is %this_color%.
;}
 
 ;StringGetPos, pos, rs, chr(9),R#,0
 ;pos:=InStr(rs,A_Space)
  ;len:= strlen(A_LoopReadLine)
  ;��ȡtab���ַ���λ��
  pos:=instr(rs,chr(9))

   st:=substr(rs,1,pos-1)
   st2:=substr(rs,pos+1)
  ; st3:=st2+14
  msgbox  rs%rs%pos%pos%end��һ������%st%�ڶ�������%st2%
 
 
}
