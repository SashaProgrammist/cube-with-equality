var
  x: array [1..3, 1..3] of integer;
  y: array [1..8] of integer;
  i, a, d, r, e: integer;
  h: string;

begin
  write('сколько чисел проверять - ');
  readln(r);
  r := r + 1;
  repeat
    begin
      inc(x[1, 1]);
      if (x[1, 1] = r - 1) then
      begin
        if (x[1, 2] = r - 1) then
        begin
          if (x[1, 3] = r - 1) then
          begin
            if (x[2, 1] = r - 1) then
            begin
              if (x[2, 2] = r - 1) then
              begin
                if (x[2, 3] = r - 1) then
                begin
                  if (x[3, 1] = r - 1) then
                  begin
                    if (x[3, 2] = r - 1) then
                    begin
                      if (x[3, 3] = r - 1) then
                      begin
                        e := 1;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
      //writeln(x[1, 1], '  ', x[1, 2], '  ', x[1, 3], '  ', x[2, 1], '  ', x[2, 2], '  ', x[2, 3], '  ', x[3, 1], '  ', x[3, 2], '  ', x[3, 3]);
      if (x[1, 1] = r) then
      begin
        x[1, 1] := 0;
        inc(x[1, 2]);
      end;
      if (x[1, 2] = r) then
      begin
        x[1, 2] := 0;
        inc(x[1, 3]);
      end;
      if (x[1, 3] = r) then
      begin
        x[1, 3] := 0;
        inc(x[2, 1]);
      end;
      if (x[2, 1] = r) then
      begin
        x[2, 1] := 0;
        inc(x[2, 2]);
      end;
      if (x[2, 2] = r) then
      begin
        x[2, 2] := 0;
        inc(x[2, 3]);
      end;
      if (x[2, 3] = r) then
      begin
        x[2, 3] := 0;
        inc(x[3, 1]);
      end;
      if (x[3, 1] = r) then
      begin
        x[3, 1] := 0;
        inc(x[3, 2]);
      end;
      if (x[3, 2] = r) then
      begin
        x[3, 2] := 0;
        inc(x[3, 3]);
      end;
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
      for i := 1 to 27 do
      begin
        if (i < 4) then 
        begin
          if (x[i, 1] = x[i, 2]) then inc(a);
        end
          else
        begin
          if (i < 7) then 
          begin
            if (x[i - 3, 2] = x[i - 3, 3]) then inc(a);
          end
          else
          begin
            if (i < 10) then 
            begin
              if (x[i - 6, 1] = x[i - 6, 3]) then inc(a);
            end
            else
            begin
              if (i < 13) then 
              begin
                if (x[1, i - 9] = x[2, i - 9]) then inc(a);
              end
              else
              begin
                if (i < 16) then 
                begin
                  if (x[2, i - 12] = x[3, i - 12]) then inc(a);
                end
                else
                begin
                  if (i < 19) then 
                  begin
                    if (x[1, i - 15] = x[3, i - 15]) then inc(a);
                  end
                  else
                  begin
                    if (i < 20) then 
                    begin
                      if (x[1, 1] = x[2, 2]) then inc(a);
                    end
                    else
                    begin
                      if (i < 19) then 
                      begin
                        if (x[1, i - 15] = x[3, i - 15]) then inc(a);
                      end
                      else
                      begin
                        if (i < 21) then 
                        begin
                          if (x[1, i - 18] = x[2, i - 17]) then inc(a);
                          if (x[1, i - 17] = x[2, i - 18]) then inc(a);
                        end
                        else
                        begin
                          if (i < 23) then 
                          begin
                            if (x[2, i - 20] = x[3, i - 19]) then inc(a);
                            if (x[2, i - 19] = x[3, i - 20]) then inc(a);
                          end
                          else
                          begin
                            if (i < 25) then 
                            begin
                              if (x[1, i - 22] = x[3, i - 21]) then inc(a);
                              if (x[1, i - 21] = x[2, i - 22]) then inc(a);
                            end
                            else
                            begin
                              if (i < 27) then 
                              begin
                                if (x[i - 24, 1] = x[i - 23, 3]) then inc(a);
                                if (x[i - 23, 2] = x[i - 24, 3]) then inc(a);
                              end
                              else
                              begin
                                if (x[1, 1] = x[3, 3]) then inc(a);
                                if (x[3, 1] = x[1, 3]) then inc(a);
                              end;
                            end;
                          end;
                        end;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
      for i := 2 to 8 do if (y[i - 1] = y[i]) then inc(d);
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
      end;
    end;
  until (e = 1);
  writeln('програма завершена,');
  write('в веди что-то что-бы выйтина рабочий стол - ');
  readln(h);
end.
