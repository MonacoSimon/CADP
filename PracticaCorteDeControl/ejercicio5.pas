program ejercicio5;
type
    str = string[20];
    tAuto=record
        marca:str;
        modelo:integer;
        precio:integer;
    end;
procedure LeerAuto(var a:tAuto; var promedios:real);
var
    marcaActual:string;
begin
    writeln('escriba la marca: ');
    readln(a.marca);
    while(a.marca <> 'zzz')do begin
        marcaActual:=a.marca;
        while(a.marca = marcaActual)do begin
            writeln(a.modelo);
            writeln(a.precio);
            promedios:=promedio(a);
end;
function promedio(a:tAuto):real;
var
    cont:=0;
    acu:=0;
    promed:=0;
begin
    cont:=cont+1;
    acu:=a.precio;
    promed:=acu/cont;
    promedio:=promed;
end;