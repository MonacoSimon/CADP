program ejercicio4;
var
    numero:integer;
    minimo1:integer;
    minimo2:integer; 
begin
    minimo1:=9999;
    minimo2:=9999;
    numero:=0;
    write('escriba un numero: ');
    read(numero);
    while(numero<>0)do
    begin
        if(numero < minimo1)then
        begin
            minimo2:=minimo1;
            minimo1:=numero;
        end
        else
        begin
            if(numero< minimo2)then
                minimo2:=numero;
        end;
        write('escriba un numero: ');
        read(numero);
    end;
    write(minimo1,',', minimo2);

    
end.