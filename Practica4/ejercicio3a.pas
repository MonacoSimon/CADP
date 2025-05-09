program ejercicio3;
const
    dimf=4;
type
    vector=array[1..dimf] of integer;
procedure cargar(var v:vector; var diml:integer);
var
    i:integer;
begin
    for i := 1 to dimf do begin
        writeln('escriba un numero: ');
        readln(v[i]);
        diml:=diml+1;
    end
end;
procedure Imprimir(v:vector);
var 
    i:integer;
begin
    for i := 1 to dimf do
        writeln(v[i]);
end;
procedure ImprimirPU(v:vector);
var
    i:integer; a:integer;
begin
    a:=dimf;
    for i:=1 to dimf do begin
        writeln(v[a]);
        a:=a-1;
    end
end;
procedure ImprimirMitad(v:vector;diml:integer);
var
    i:integer;
begin
    diml:=diml DIV 2;
    for i:=1 to diml do begin
        writeln(v[diml]);
        diml:=diml-1;
    end
end;
var
    v:vector; diml:integer;
begin
    diml:=0;
    cargar(v, diml);
    // Imprimir(v);
    // ImprimirPU(v);
    ImprimirMitad(v,diml);
end.