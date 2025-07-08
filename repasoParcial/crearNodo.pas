program agregarNodo;
type
    str50=string[1..50];
    producto=record
        dato:str50;
        codigo:integer;
    end;
    lista=^nodo;
    nodo=record
        dato:producto;
        sig:lista;
    end;

procedure crearNodo(var l:lista; p:producto);
var 
    aux:lista;
begin
    new(aux);
    aux^.dato:=p;
    aux^.sig:=l;
    l:=aux;
end;
procedure leerProducto(var p:producto);
begin
    read(p.codigo);
    while(p.codigo<>-1)do begin
        read(p.dato);
        read(p.codigo);
    end;
end;
procedure crearLista(var l:lista);
var
    p:producto;
begin
    leerProducto(p);
    while(p.codigo<> -1)do begin
        crearNodo(l,p);
        leerProducto(p);
    end;
end;
procedure recorrerLista(l:lista);
begin
    while(l <> nil)do begin
        Write(l^.dato.nombre);
        l:=l^.sig;
    end;
end;
var 
    l:lista;
begin
    l:=nil;
    crearLista(l);
    recorrerLista(l);
end.










procedure eliminar(var l:lista; n:integer);
var 
    act,ant:lista;
begin
    act:=l;
    while(act<>nil) and (n<>act^.dato.dni)do begin
        ant:=act;
        act:=act^.sig;
    end;
    if(act<>nil)then begin
        if(act=l)then
            l:=l^.sig;
        else
            ant^.sig:=act^.sig;
    dispose(act):
end;