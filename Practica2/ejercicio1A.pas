program ejercicio1A;
var
    numero:integer;
    comparacion:integer;
    cont:integer;
    i:integer;
begin
    numero:=0;
    comparacion:=0;
    cont:=0;
    for i:=1 to 5 do
    begin
        write('escriba un numero: ');
        read(comparacion);
        numero:=numero+comparacion;
        if(comparacion >5)then
            cont:=cont+1;
        comparacion:=0;
    end;
    writeln(numero);
    writeln(cont);
end.