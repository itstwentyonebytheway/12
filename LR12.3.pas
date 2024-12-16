var
  filetext: text;
  s: string;
begin
  s := 'plane';
  assign(filetext,'C:\oaip\text3.txt');
  append(filetext);
  writeln(filetext, s);
  close(filetext);
end.