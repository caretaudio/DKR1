Program RomanKnyazev;


function Compute(x: real): real;
begin
  if x < -10 then
    Compute := log10(x)/log10(x) - (-x)/power(x, 3)
  else if (x >= -10) and (x < 1) then
    Compute := cos(x) - x
  else if x >= 6 then
    Compute := 2/cos(x) + cos(2*x)
  else
    Compute := (power(x, 3)/13)*(cos(2*x)/-x);
end;

var
  x, result: real;

begin
  writeln('Вычисление значения функции на интервале [-12; 8] с шагом 0.3:');
  
  x := -12;
  while x <= 8 do
  begin
    result := Compute(x);
    writeln('x:', x:5:2, '  Результат:', result:10:4);
    x := x + 0.3;
  end;

  readln;
end.
