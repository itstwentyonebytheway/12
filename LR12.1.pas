program one;

var
  f: textfile; 
  i: integer;
  number: integer;

begin
  
  assignfile(f, 'c:\oaip\text.txt'); 
  rewrite(f); 
  for i := 1 to 10 do
  begin
    writeln(f, i); 
  end;
  closefile(f); 

  
  assignfile(f, 'c:\oaip\text.txt'); 
  reset(f); 
  writeln('числа из файла:');
  while not eof(f) do // пока не достигнут конец файла
  begin
    readln(f, number); 
    writeln(number); 
  end;
  closefile(f); 
end.