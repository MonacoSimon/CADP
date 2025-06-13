program ejercicioentrega;
type
    str50=string[50];
    producto=record
        codigo: integer;
        nombre: str50;
        precio: real;
        marca: str50;
        rubro: str50;
    end;
    lista=^nodo;
    nodo=record
        dato: producto;
        sig: lista;
    end;
procedure cargarLista(var l:lista; p: producto); //se dispone
begin
    
end;
function mayor(l:lista):integer;
var
    cod:integer;
    max:real;
begin
    max:=0;
    cod:=0;
    if (l <> nil) then begin
        while (l <> nil) do begin
            if (l^.dato.precio > max) then begin
                max := l^.dato.precio;
                cod := l^.dato.codigo;
            end;
            l := l^.sig;
        end
    else
        mayor:=-1;
    end;
    mayor := cod;
end;
function mayorOrdenado(l:lista):integer;
begin
    if (l <> nil) then begin
        mayorOrdenado := l^.dato.codigo
    else
        mayorOrdenado := -1;
    end;
end;
var
    l: lista;
    p: producto;
    mayorordenado:integer;
    mayordesordenado:integer;
begin
    l := nil;
    // cargarLista(l, p); //se dispone
    // leerLista(l); //se dispone
    mayordesordenado := mayor(l);
    writeln('El codigo del producto con mayor precio es: ', mayordesordenado);
    
    mayorordenado := mayorOrdenado(l);
    writeln('El codigo del producto con mayor precio en lista ordenada es: ', mayorordenado);
end.