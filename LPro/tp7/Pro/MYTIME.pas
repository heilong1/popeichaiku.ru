program FirstGr;
uses crt, graph, dos;
var nd,nr, i,k, x,y, a,b, cf :integer;
hr,mn,sc,sc100:word;
gr,cs,sn:real; cfs:string; rpt:char;
arrh: array[1..2,0..23] of integer;
arrms: array[1..2,0..59] of integer;
label strt,kns;

procedure hours;
   begin
   (* ��ᮢ���� ������ �ᮢ *)
   Setfillstyle(solidfill,yellow);
   bar(100,100,700,700);
   Setfillstyle(solidfill,black);
   bar(110,110,690,690);
   setcolor(red);
   circle(400,400,290);
   circle(400,400,230);
   (* ���ᮢ�� ��� ��� �ᮢ *)
   settextstyle(defaultfont,horizdir,3);
   cf:=1;
   for i:=2 downto -9 do
        begin
        cs:=cos(pi/180*i*30);
        sn:=sin(pi/180*i*30);
        x:=trunc (388 + cs*268);
        y:=trunc (390 - sn*268);
        str(cf,cfs);
        outtextXY(x,y,cfs);
        cf:=cf+1;
        end;
   end;

BEGIN
strt:
clrscr;
(* ����⮢�� ���㯫���� *)
Writeln('����� ����. �ணࠬ�� ���� ���. ��-�� �ᮡ������ ��⥬�');
Writeln('�������� ����稥 ���� ����, ࠡ����� �����६����.');
Writeln('�⮡� �� �������� ᫮�����, �������� ������ �।���⥫쭮.');
Writeln('��� �������� �ணࠬ�� �㦭� �ந����� ����⨥ �� ������');
Write('� �⮬ ����. ����� ����⨥� enter ����� 㢨���� ��⥬��� �६�.');
readln;
(* ����� ��䨪� *)
nd:=detect;
initgraph(nd,nr,'');

hours;

(* ���� ᮧ����� ���ᨢ� ���न��� ��� ����� *)
        gr:=90;
for i:=0 to 59 do
        begin
        cs:=cos(pi/180*gr);
        sn:=sin(pi/180*gr);
        x:=trunc (400 + cs*210);
        y:=trunc (400 - sn*210);
        arrms[1,i]:=x; arrms[2,i]:=y;
        gr:=gr-6;
        end;
(* ���� ᮧ����� ���ᨢ� ���न��� ��� �ᮢ *)
        gr:=90;
for i:=0 to 23 do
        begin
        cs:=cos(pi/180*gr);
        sn:=sin(pi/180*gr);
        x:=trunc (400 + cs*150);
        y:=trunc (400 - sn*150);
        arrh[1,i]:=x; arrh[2,i]:=y;
        gr:=gr-30;
        end;

(* ���� �஢�ન � ॠ����樨 ���ᨢ�
for i:=0 to 59 do
        begin
        line(400,400,arrh[1,i],arrh[2,i]);
        delay(50);
        end;                                  *)

(* ��稭����� ࠡ�� �ᨪ��*)
gettime(hr,mn,sc,sc100);

repeat
setcolor(red);
gettime(hr,mn,sc,sc100);
line(400,400,arrh[1,hr],arrh[2,hr]);
line(400,400,arrms[1,mn],arrms[2,mn]);
setcolor(magenta);
line(400,400,arrms[1,sc],arrms[2,sc]);
delay(1000);
setcolor(black); setfillstyle(solidfill,black);
pieslice(400,400,0,360,225);
until keypressed;

readln;
kns:
closegraph;
writeln('�த� ��, �� ࠡ�⠥�. ���� � �� ⠪, ��� ࠭��.');
write ('���? 1 - ��, 2 - �����. �롮� - '); readln(rpt);
if rpt='1' then goto strt else exit;
readln
END.
