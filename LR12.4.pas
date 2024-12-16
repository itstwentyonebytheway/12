var
  filetext: text;
  filetext1: text;
  k,i: integer;
  s: string;
  begin
    k:= 5;
    assign(filetext,'C:\oaip\text4.txt');
    assign(filetext1,'C:\oaip\text4.1.txt');
    reset(filetext);
    rewrite(filetext1);
    i := 0;
    while not eof (filetext) do
    begin
      readln(filetext, s);
      i += 1;
      if i = k then
        writeln(filetext1);
        writeln(filetext1,s);
    end;
    close(filetext);
    close(filetext1);
  end.