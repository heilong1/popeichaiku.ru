program functforsort;
uses crt;
var i,z:integer; rpt:char; m:array[0..9] of integer;
label strt;

function sort1s(m:array of integer):integer;
         var z,max,x,i,k:integer;
         begin
         z:=1;
         for i:=9 downto 1 do
            begin
            max:=m[0];
            x:=0;
            for k:=1 to i do
               begin
               if m[k]>max then
                  begin
                  z:=z+1;
                  max:=m[k];
                  x:=k;
                  end;
               end;
            m[x]:=m[i];
            m[i]:=max;
            end;
         writeln('�������� ���஢�� ���� ᯮᮡ - ');
         for i:=0 to 9 do
         write(m[i],' ');
         writeln;
         sort1s:=z;
         end;

function sort2s(m:array of integer):integer;
         var z,i,k,x:integer;
         begin
         z:=1;
         for i:=9 downto 1 do
            for k:=1 to i do
               if m[k]<m[k-1] then
                  begin
                  z:=z+1;
                  x:=m[k]; m[k]:=m[k-1]; m[k-1]:=x;
                  end;
         writeln('�������� ���஢�� ��ன ᯮᮡ - ');
         for i:=0 to 9 do
         write(m[i],' ');
         writeln;
         sort2s:=z;
         end;

begin
strt:
clrscr;
randomize;
(*----------------------------------------------------*)
writeln('��������� ���ᨢ:');
for i:=0 to 9 do
   begin
   m[i]:=random(90)+10;
   write (m[i],' ')
   end;
writeln();
(*----------------------------------------------------*)
z:=sort1s(m);
writeln('������⢮ ᤢ���� - ',z);
z:=sort2s(m);
writeln('������⢮ ᤢ���� - ',z);
(*----------------------------------------------------*)
write ('���? 1 - ��, 2 - �����. �롮� - '); readln(rpt);
if rpt='1' then goto strt else exit;
readln
end.
