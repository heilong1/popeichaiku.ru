program repLearn03;
uses crt;
var x,s:integer;
begin
clrscr;
writeln ('�ணࠬ�� ࠧ������ �� ����� �����⥫�. ��� ����� �� ���类�.');
write ('����� 楫�� �᫮ �� 1000. ��᫮ - ');
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




















