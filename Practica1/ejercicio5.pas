
program Hello;
var
    nrolegajo:Integer; promedio:real;
    contAlum:Integer; primerPromedio:Integer;
    destacado:Integer;
begin
  contAlum:=0; primerPromedio:=0;
  destacado:=0;
  Writeln('escriba el legajo: ');
  read(nrolegajo);
  while(nrolegajo <>-1)do
  begin
    Write('escriba nota: ');
    read(promedio);
    contAlum:=contAlum+1;
    if(promedio >= 6.5)then
        primerPromedio:=primerPromedio+1;
        if((promedio>=8.5) and (nrolegajo<2500))then
            destacado:=destacado+1;
    Writeln('escriba el legajo: ');
    read(nrolegajo);    
  end;
  Writeln('contador de alumnos: ', contAlum);
  Writeln('promedio mayor a 6.5: ', primerPromedio);
  Writeln('alumnos destacados: ', destacado);
end.
