var
  filetext:text;
  n,k,i:integer;
  s: string;
begin
  assign(filetext,'C:\oaip\text2.txt');
  rewrite(filetext);
  n := 4;
  k := 8;
  for i := 1 to n do
    s += ' * ';
  for i := 1 to k do
    writeln(filetext, s);
    close(filetext)  
end.
  