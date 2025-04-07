program ejercicio3;
var
    nombre:string;
    nota:real;
    contNota:integer;
    contAprobado:integer;
begin
    nota:=0;
    contNota:=0;
    contAprobado:=0;
    repeat
        writeln('escriba un  nombre: ');
        readln(nombre);
        writeln('escriba nota: ');
        readln(nota);
        if(nota >= 8)then
            contNota:=contNota+1;
        if(nota = 7)then
            contAprobado:=contAprobado+1;
    until (nombre='zinadine zidane');
    writeln(contAprobado);
    writeln(contNota);
end.