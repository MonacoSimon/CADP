program ejercicio1;
var
    numero:integer;
    comparacion:integer;
    i:integer;
begin
    numero:=0;
    comparacion:=0;
    for i := 1 to 5 do
    begin
        write('escriba un numero: ');
        read(comparacion);
        numero:=numero+comparacion;
        comparacion:=0;
    end;
    write(numero);
        
end.