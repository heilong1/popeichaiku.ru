program DoAsciiTablo;
uses crt;
var i,k,h1,v1,h2,v2,x:integer;
label strt;
begin
textbackground(0);
clrscr;
strt:
(*------------------------------------------------*)
textcolor(9);

x:=1;
h1:=1; v1:=1; h2:=6; v2:=27;
while x<255 do
   begin
   i:=1;
   window(h1,v1,h2,v2);
   textbackground(2);
   clrscr;
   while i<25 do
      begin
      writeln(x:3,' ',chr(x));
      i:=i+1;
      x:=x+1;
      end;
   h1:=h1+7;
   h2:=h2+7;
   end;
(*---------------------------,chr(x)---------------------*)
readln
end.
