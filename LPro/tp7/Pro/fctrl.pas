program factorial;
uses crt;
var fcx,x:integer; rpt:char;
label strt;

function fac(x:integer):integer;
         var fcx,i:integer;
         begin
         fcx:=1;
         for i:=1 to x do
            begin
            fcx:=fcx*i;
            write(fcx,' ');
            end;
         writeln;
         fac:=fcx;
         end;

begin
strt:
clrscr;
write('Введите значение х - '); readln(x);
fcx:=fac(x);
writeln('Кажется, факториал сего будет - ',fcx);
(*----------------------------------------------------*)

(*----------------------------------------------------*)

(*----------------------------------------------------*)
write ('Ещё? 1 - да, 2 - конец. Выбор - '); readln(rpt);
if rpt='1' then goto strt else exit;
readln
end.
