program repLearn03;
uses crt;
var x,s:integer;
begin
clrscr;
writeln ('Программа разлагает на простые множители. Нет защиты от косяков.');
write ('Ввести целое число до 1000. Число - ');
readln(x);
s:=2;
while s<=x do
   begin
   if x mod s =0 then
      begin
      x:=x div s;
      write (s,' '); s:=2;
      end
      else s:=s+1;
   end;
readln
end.




















