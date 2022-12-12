uses Crt;
var a, b, h, s, y: real;
n: integer;
function f(x: real): real;
begin 
  f := power(x,3) + (-2) * power(x,2) -5 * x + 12
end;
function f1(x: real): real;
begin
  f1:= (x*3*power(X,3)- 8*power(x,2)-30*x + 144)/12
end;
procedure gig;
begin
print('введите верхний предел b:');
var a:=ReadInteger;
print('введите нижний предел :');
var b:=ReadInteger;
print('введите количество разбиений:');
var n:=ReadInteger;
var h:=(b-a)/n;
var s:=(f(a)+f(b))/2;
var x:=a+h;
for var i:=1 to n-1 do
begin
s:=s+f(x);
x:=x+h;
s:=s*h;
end;
var p:=f1 (b)-f1 (a);
var d:=abs(p-s);
println('точное значение:',p);
println('приближенное значение:',s);
println('погрешность метода',d);
end;
var t:integer;
begin
repeat
println;
textcolor(Green);
println('Выберите то,что вам необходимо:');
println('1-функция');
println('2-производная функции');
println('3-нахождение площади');
println('0-выйти из программы');
readln(t);
case t of
1:println('Функция:power(x,3) + (-2) * power(x,2) -5 * x + 12');
2:println('Производная функции:(x*3*power(X,3)- 8*power(x,2)-30*x + 144)/12');
3:gig;
0:halt
end;
until t=4;
end.