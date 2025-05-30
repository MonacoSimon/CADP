program ejercicio1;
const 
    dimF=50;
type
    vector = array[1..dimF] of integer;
procedure cargarVector(var v: vector; var dimL: integer);
var
    i: integer;
    a:integer;
begin
    dimL:=0;
    writeln('ingrese un valor: ');
    readln(a);
    while ((dimL < dimF) and (a <> -1))do begin
        dimL := dimL + 1;
        write('escriba un valor: ');
        readln(v[dimL]);
end;
end;
procedure buscarValor(v: vector; dimL: integer; n:integer);
var
    i: integer;
    encontrado:boolean;
begin
    i:=1;
    while (dimL < dimF)
    do begin
        i := i + 1;
        if (v[i] = n)then begin
            write('el valor ', n, ' fue encontrado');
            encontrado:=true;
        end;
    end;
    if(encontrado <> true)then
        writeln('el valor ', n, ' no fue encontrado');
        
end;
var
    v:vector;
    dimL: integer;
    n:integer;
begin
    cargarVector(v, dimL);
    writeln('ingrese el valor a buscar: ');
    readln(n);
    buscarValor(v, dimL, n);
end.