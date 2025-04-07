program ejercicio5;
var
    max:integer;
    min:integer;
    suma:integer;
    numero:integer;
begin
    max:=-9999;
    min:=9999;
    suma:=0;
    repeat
        write('escriba un numero: ');
        read(numero);
        if(numero < min)then
        begin
            min:=numero;
        end
        else
        begin
            if(numero>max)then
                max:=numero;
        end;
        suma:=suma+numero;
    until(numero = 100);
    write(suma,',',max,',',min);
end.