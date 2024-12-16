var
  filetext: text;
  filetext1: text;
  s: string;
  begin
    assign(filetext,'C:\oaip\text6.txt');
    assign(filetext1,'C:\oaip\text6.1.txt');
    reset(filetext);
    rewrite(filetext1);
    while not eof (filetext) do
    begin
      readln(filetext, s);
      if s = '' then
        continue;
      writeln(filetext1, s);
    end;
    close(filetext);
    close(filetext1);
  end.