program ejercicio;
const
    dimf=5;
    corte=33555444;
type 
    str50=string[1..50];
    subcodigo=1..dimf;
    persona=record
        dni:integer;
        ape:str50;
        nom:str50;
        edad:integer;
        cod:subcodigo;
    end;
    lista=^nodo;
    nodo=record
        dato:persona;
        sig:lista;
    end;
procedure crearNodo(var l:lista; p:persona);
var 
    aux:lista;
begin
    new(aux);
    aux^.dato:=p;
    aux^.sig:=l;
    l:=aux;
end;
procedure leerPersona(var p:persona);
begin
    repeat
        read(p.dni);
        read(p.ape);
        read(p.nom);
        read(p.edad);
        read(p.cod);
    until (p.dni = corte);
end;
procedure crearLista(var l:lista);
var
    p:persona;
begin
    
end;