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
write('������ ���祭�� � - '); readln(x);
fcx:=fac(x);
writeln('�������, 䠪�ਠ� ᥣ� �㤥� - ',fcx);
(*----------------------------------------------------*)

(*----------------------------------------------------*)

(*----------------------------------------------------*)
write ('���? 1 - ��, 2 - �����. �롮� - '); readln(rpt);
if rpt='1' then goto strt else exit;
readln
end.
