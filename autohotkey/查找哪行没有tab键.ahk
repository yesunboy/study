

Loop, Read, 11.txt
{


  ;msgbox,%A_LoopReadLine%
  ;移除字符串两端的空格和制表符
rs=%A_LoopReadLine% 
;按空格分割字符串,存到数组
 ;StringSplit, word_array, rs, %A_Space%, .
 ;Loop, %word_array%
;{
;    this_color := word_array%a_index%
 ;   MsgBox, Color number %a_index% is %this_color%.
;}
 
 ;StringGetPos, pos, rs, chr(9),R#,0
 ;pos:=InStr(rs,A_Space)
  ;len:= strlen(A_LoopReadLine)
  ;获取tab键字符串位置
  pos:=instr(rs,chr(9))

   st:=substr(rs,1,pos-1)
   st2:=substr(rs,pos+1)
  ; st3:=st2+14
  msgbox  rs%rs%pos%pos%end第一个变量%st%第二个变量%st2%
 
 
}
