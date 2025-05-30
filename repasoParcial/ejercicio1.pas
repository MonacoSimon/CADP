program sumaResta;
var
    caracter:char;
    numero:integer;
    suma:integer;
begin
    numero:=0;
    suma:=0;
    write('escriba un caracter: ');
    readln(caracter);
    if((caracter = '+') or (caracter='-'))then begin
        write('escriba un numero: ');
        readln(numero);
        while(numero <> 0)do begin
            if(caracter='+')then
                suma:=suma+numero
            else
                suma:=suma-numero;
            write('escriba un numero: ');
            readln(numero);
        end;
    end
    else
        write('error en el caracter');
    write(suma);
                
            
end.