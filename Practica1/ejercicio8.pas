program ejercicio8;
var
    caracter:char;
    numero:real;
    comparacion:real;
begin
    comparacion:=0;
    numero:=0;
    Write('escriba + o -: ');
    read(caracter);
    if((caracter = '+') or (caracter='-'))then
    begin
        Write('escriba un numero: ');
        read(comparacion);
        while(comparacion<> 0)do
        begin
            if(caracter = '+')then
                numero:=numero+comparacion
            else
                numero:=numero-comparacion;
            comparacion:=0;
            Write('escriba un numero: ');
            readln(comparacion);
    end;
    end
    else
    begin
        Write('error');
    end;
    Write('Resultado final: ', numero:0:2);
end.