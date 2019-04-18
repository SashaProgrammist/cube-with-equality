var
  x: array [1..3, 1..3] of integer;
  y: array [1..8] of integer;
  i, j, g, k, a, d, r, e: integer;
  h: string;
  b: boolean;


begin
  write('сколько чисел проверять - ');
  readln(r);
  r := r + 1;
  repeat 
    begin
      inc(x[1, 1]);
      b := true;
      for i := 1 to 3 do 
        for j := 1 to 3 do 
          if x[i, j] <> r - 1 then
            b := false ;
      if b = true then
        e := 1 ;
      writeln(x[1, 1], '  ', x[1, 2], '  ', x[1, 3], '  ', x[2, 1], '  ', x[2, 2], '  ', x[2, 3], '  ', x[3, 1], '  ', x[3, 2], '  ', x[3, 3]);
      for i := 1 to 3 do 
        for j := 1 to 3 do 
          if ((i <> 3) or (j <> 3)) and (x[i, j] = r) then
            begin
              x[i, j] := 0;
              if j = 3 then
                inc(x[i + 1, 1])  
              else 
                inc(x[i, j + 1]);
            end ;
      a := 0;
      d := 0;
      for i := 1 to 8 do 
        begin
          if (i < 4) then
            begin
              y[i] := x[i, 1] + x[i, 2] + x[i, 3];
            end 
          else 
            begin
              if (i < 7) then
                begin
                  y[i] := x[1, i - 3] + x[1, i - 3] + x[1, i - 3];
                end 
              else 
                begin
                  y[i] := x[1, 1] + x[2, 2] + x[3, 3];
                  y[i] := x[1, 3] + x[2, 2] + x[3, 1];
                end;
            end;
        end;
      a := 0;
      for g := 1 to 3 do 
        for k := 1 to 3 do 
          for i := 1 to 3 do 
            for j := 1 to 3 do 
              begin
                if (x[g, k] = x[i, j]) then
                  inc(a) ;
              end;
      a := a - 9;
      for i := 2 to 8 do 
        if (y[i - 1] = y[i]) then
          inc(d) ;
      if (d = 7) and (a = 0) then
        begin
          writeln('____________________________________________________');
          writeln('  ');
          writeln(x[1, 1], '  ', x[1, 2], '  ', x[1, 3]);
          writeln('  ');
          writeln(x[2, 1], '  ', x[2, 2], '  ', x[2, 3]);
          writeln('  ');
          writeln(x[3, 1], '  ', x[3, 2], '  ', x[3, 3]);
          writeln('  ');
          writeln('____________________________________________________-');
        end ;
    end;
  until (e = 1);
  writeln('програма завершена,');
  write('в веди что-то что-бы выйтина рабочий стол - ');
  readln(h);
end.
