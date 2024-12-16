var
  filetextinput, filetextоutput: textfile;
  num, min, max: integer;
begin
  assignFile(filetextinput,'C:\oaip\input.txt');
  reset(filetextinput);
  readln(filetextinput, num);
  min := num;
  max := num;
  while not eof (filetextinput) do
    begin
     readLn(filetextinput, num); 
      if num < min then
        min := num;
      if num > max then
        max := num;
    end;
  closefile(filetextinput);
  assignfile(filetextоutput, 'C:\oaip\output.txt');
  rewrite(filetextоutput);
  
  writeln(filetextоutput, 'минмальное число: ', min);
  writeln(filetextоutput, 'максимальное число: ', max);
  closefile(filetextоutput);
end.
