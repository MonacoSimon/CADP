program ejercicio2;
var 
    max:integer; numero:integer;
    i:integer;
begin
    max:=-9999;
    numero:=0;
    for i:=1 to 10 do
    begin
        write('escriba un numero: ');
        read(numero);
        if(numero > max)then
            max:=numero;
    end;
    write(max);    
end.