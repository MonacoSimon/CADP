program ejercitacion;
type
    string50=string[50];
    tProductos=record
        codigo:integer;
        nombre:string50;
        marca:string50;
        rubro:string50;
        stock:string50;
        precio:real;
    lista=^nodo;
    nodo=record
        dato:tProductos;
        sig:lista;
    end;
    tproductoNuevo=record
        codigo:integer;
        marca:string50;
    end;
    nLista=^Nnodo;
    Nnodo=record
        dato:tproductoNuevo;
        sig:nLista;
    end;
procedure LeerProducto(var P:tProductos);
begin
    readln(P.codigo);
    readln(P.nombre);
    readln(P.marca);
    readln(P.rubro);
    readln(P.stock);
    readln(P.precio);
end;
procedure GenerarLista(lo:lista, r:string50);
begin
    while(lo<>nil)do begin
        if (lo^.dato.rubro =r) then
            agregarDato(lo);
        lo:=lo^.sig;
end;
procedure agregarDato(var lo:lista);
var
    nuevo:nlista;
begin
    new(nuevo);
    nuevo^.dato.codigo:=lo^.dato.codigo;
    nuevo^.dato.marca:=lo^.dato.marca;
    nuevo^.sig:=nuevo;
end;
var
    ln:nlista;
    lo:lista;
    r:string50;
begin
    cargarProductos(lo); //se dispone
    readln(r);
    GenerarLista(lo, r);
end.