program Filin;
uses crt;
var tf:text; str:string; rpt,qv:char;
label strt;
(* файл expfile.txt в директорию к исполнителю *)

procedure showf;
   begin
   clrscr;
   reset (tf);
   while not eof(tf) do
     begin
     readln(tf,str);
     writeln(str)
     end;
   close (tf);
   end;

procedure redcf; var ns:string;
   begin
   clrscr;
   Write('1 - очистить перед записью. 2 - дополнить. ');
   readln(qv);
   if qv = '1' then rewrite (tf)
               else append (tf);
      repeat
      writeln('Вводите новую строку текста:');
      readln(ns);
      writeln(tf,ns);
      write('1 - ещё добавить строку, 2 - завершить. ');
      readln(qv);
      until qv='2';
   close (tf);
   end;

BEGIN
strt:
clrscr;
assign (tf,'Expfile.txt');
Writeln('1 - отобразить текст файла expfile.txt;');
Writeln('2 - перезаписать файл expfile.txt;');
Write('Наш выбор - ');
readln(qv);

case qv of
'1': showf;
'2': redcf;
else goto strt; end;

writeln ('____________________________________________________________');
write ('Ещё? 1 - да, 2 - конец. Выбор - '); readln(rpt);
if rpt='1' then goto strt else exit;
readln
END.