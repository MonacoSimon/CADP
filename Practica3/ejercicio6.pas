Program ejercicio6;
procedure Par;
var
    maximo:integer; numero:integer;
begin
    maximo:=-1;
    writeln('escriba un numero: ');
    readln(numero);
    while(numero>=0)do
    begin
        if(numero MOD 2 = 0)then begin
            if(numero > maximo)then
                maximo:=numero;
        end;
        writeln('escriba un numero: ');
        readln(numero);
    end;
    writeln(maximo);
end;

begin
    Par;
end.

