program descomponer;
procedure descomponer(n:longint;var contImpar:integer; var contPar:integer);
var
    dig:integer; 
begin
    while (n<>0)do begin
        dig:=n mod 10;
        if(dig mod 2 = 0)then 
            contPar:=contPar+1
        else
            contImpar:=contImpar+1;
        n:=n div 10;
    end;
end;
var
    numero:longint; contImpar,contPar:integer;
begin
    contImpar:=0;
    contPar:=0;
    write('escriba un numero: ');
    readln(numero);
    descomponer(numero,contImpar,contPar);
    writeln('el numero de pares es: ',contPar);
    Writeln('el numero de impares es: ', contImpar);
end.