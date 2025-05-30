program descomponer;

procedure descomponer(n:integer);
var
    dig: integer;
    contpar:integer;
    contimpar:integer;
begin
    contpar:=0;
    contimpar:=0;
    while (n <> 0)do begin
        dig:= n mod 10;
        if(dig mod 2 = 0)then
            contpar:= contpar + 1
        else
            contimpar:=contimpar+1;
        n:= n div 10;
    end;
    writeln('Cantidad de digitos pares: ', contpar);
    writeln('Cantidad de digitos impares: ', contimpar);
end;

var
    n:integer;
begin
    n:=87;
    descomponer(n);
end.