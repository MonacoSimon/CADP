program ejercicio8;
type
    ndia = 1..5;
var
    i: ndia;
    monto: real;
    acu: real;
    contDia: real;
begin
    acu := 0;
    
    for i := 1 to 5 do
    begin
        contDia := 0;
        writeln('Día ', i, '  ');
        writeln('Ingrese montos. Ingrese 0 para terminar el día.');
        repeat
            write('Escriba un monto: ');
            readln(monto);
            contDia := contDia + monto;
        until monto = 0;
        
        acu := acu + contDia;
        writeln('Total del día ', i, ': ', contDia:0:2);
    end;

    writeln('Monto total acumulado: ', acu:0:2);
end.
