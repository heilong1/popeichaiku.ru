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
write('Введите число - '); readln(a);
write('Введите ему степень - '); readln(n);
writeln('Число в его степени буде - ',aton(a,n):1:1);
write ('Ещё? 1 - да, 2 - конец. Выбор - '); readln(rpt);
if rpt='1' then goto strt else exit;
readln
end.
