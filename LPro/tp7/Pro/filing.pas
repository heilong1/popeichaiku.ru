program Filin;
uses crt;
var tf:text; str:string; rpt,qv:char;
label strt;
(* 䠩� expfile.txt � ��४��� � �ᯮ���⥫� *)

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
   Write('1 - ������ ��। �������. 2 - ���������. ');
   readln(qv);
   if qv = '1' then rewrite (tf)
               else append (tf);
      repeat
      writeln('������ ����� ��ப� ⥪��:');
      readln(ns);
      writeln(tf,ns);
      write('1 - ��� �������� ��ப�, 2 - ��������. ');
      readln(qv);
      until qv='2';
   close (tf);
   end;

BEGIN
strt:
clrscr;
assign (tf,'Expfile.txt');
Writeln('1 - �⮡ࠧ��� ⥪�� 䠩�� expfile.txt;');
Writeln('2 - ��१������ 䠩� expfile.txt;');
Write('��� �롮� - ');
readln(qv);

case qv of
'1': showf;
'2': redcf;
else goto strt; end;

writeln ('____________________________________________________________');
write ('���? 1 - ��, 2 - �����. �롮� - '); readln(rpt);
if rpt='1' then goto strt else exit;
readln
END.