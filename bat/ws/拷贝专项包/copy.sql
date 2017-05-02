set colsep '|'               --设置|为列分隔符 
　　set trimspool on 
　　set linesize 1000 
　　set pagesize 0          
　　set newpage 1 
　　set heading off            
　　set term off 
set num 18                  
set feedback off            
　　spool copy.bat 
　　 select 'copy /y  \\10.8.11.157\erpzstomcat\webapps\npserver\WEB-INF\classes\专项开发\' ||
       a.opid || '.zip   C:\Users\ye\Desktop\鹭燕专项包'
  from np_op a
 where a.prodname not like '专项开发'; 
　　spool off 
exit;