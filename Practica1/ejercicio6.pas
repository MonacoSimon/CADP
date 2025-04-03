Program ejercicio6
var
    codigo:integer; precioAumento:real;
    precioAct:real; precioNuevo:real;
begin
    Write('escriba el codigo: ');
    read(codigo);
    Write('escriba precio actual: ');
    read(precioAct);
    Write('escriba precio nuevo: ');
    read(precioNuevo);
    precioAumento:=0;
    precioAumento:=precioAct*0.10;
    precioAumento:=precioAumento+precioAct;
    if (precioNuevo > precioAumento) then
        Write('el aumento fue mayor al 10%');
    else
    begin
        Write('el aumento fue menor al 10%');
    end;
    while(codigo <> 32767)do
    begin
        Write('escriba el codigo: ');
        read(codigo);
        Write('escriba precio actual: ');
        read(precioAct);
        Write('escriba precio nuevo: ');
        read(precioNuevo);
        precioAumento:=0;
        precioAumento:=precioAumento*0.10;
        precioAumento:=precioAumento+precioAct;
        if (precioNuevo > precioAumento) then
            Write('el aumento fue mayor al 10%');
        else
        begin
            Write('el aumento fue menor al 10%');
        end;
    end;
        
end.

