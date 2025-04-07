program ejercicio2;
var 
    max:integer; numero:integer;
    i:integer; pos:integer;
begin
    max:=-9999;
    numero:=0;
    pos:=0;
    for i:=1 to 5 do
    begin
        write('escriba un numero: ');
        read(numero);
        if(numero > max)then
        begin
            max:=numero;
            pos:=i;
        end;
    end;
    writeln(max);
    writeln(pos);    
end.