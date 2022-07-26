program showcolors;
uses crt;
var i,k:integer;
begin
clrscr;
(*------------------------------------------------*)
for i:=1 to 16 do
   begin
   window(1,i,80,i);
   textbackground(i-1);
   clrscr;
   for k:=0 to 15 do
      begin
      textcolor(k);
      Write(k:3);
      end;
   end;
(*------------------------------------------------*)
readln
end.