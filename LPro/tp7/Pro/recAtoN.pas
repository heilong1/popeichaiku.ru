program AinNst;
uses crt;
var a:real; n:integer; rpt:char;
label strt;

function aton(a:real; n:integer):real;
          begin
          if n=1 then aton:=a
                 else aton:=aton(a,n-1)*a;
          end;

begin
strt:
clrscr;
write('������ �᫮ - '); readln(a);
write('������ ��� �⥯��� - '); readln(n);
writeln('��᫮ � ��� �⥯��� �㤥 - ',aton(a,n):1:1);
write ('���? 1 - ��, 2 - �����. �롮� - '); readln(rpt);
if rpt='1' then goto strt else exit;
readln
end.
