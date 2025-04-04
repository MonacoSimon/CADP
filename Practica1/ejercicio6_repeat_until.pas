Program ejercicio6;
var
    codigo:integer;
    precioAct:integer; 
    precioNuevo:real;
    precioAumento:real;
begin
    codigo:=0;
    precioAct:=0;
    precioNuevo:=0;
    precioAumento:=0;
    repeat
        Writeln('escriba el codigo: ');
        read(codigo);
        Write('escriba el precio actual: ');
        read(precioAct);
        Write('escriba precio nuevo: ');
        read(precioNuevo);
        precioAumento:=0;
        precioAumento:=precioAct *0.10;
        precioAumento:=precioAumento + precioAct;
        if(precioNuevo > precioAumento)then
            Write('el aumento es superior al 10%')
        else
            Write('el aumento fue menor al 10%')
    until (codigo = 32767);
end.