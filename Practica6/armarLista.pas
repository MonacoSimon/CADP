program Armar;
type
    str50= string[50];
    jugador=record
        nombre: str50;
        apellido: str50;
        dni:integer;
        altura: real;
    end;
    lista=^nodo;
    nodo=record
        dato: jugador;
        sig: lista;
    end;
procedure leerJugador(var p: jugador);
begin
    writeln('escriba el dni: ');
    readln(p.dni);
    if (p.dni <> 0) then begin
        writeln('escriba el nombre: ');
        readln(p.nombre);
        writeln('escriba el apellido: ');
        readln(p.apellido);
        writeln('escriba la altura: ');
        readln(p.altura);
    end;
end;
procedure cargarLista(var l: lista; p: jugador);
var
    nue: lista;
begin
    new(nue);
    nue^.dato := p;
    nue^.sig := l;
    l := nue;
end;

procedure armarLista(var l: lista);
var
    p:jugador;
begin
    leerJugador(p);
    while(p.dni <> 0)do begin
        cargarLista(l,p);
        leerJugador(p);
    end;
end;
procedure leerLista(l:lista);
begin
    while (l<> nil)do begin
        writeln('Jugador:');
        writeln(l^.dato.nombre);
        writeln(l^.dato.dni);
        writeln(l^.dato.apellido);
        writeln(l^.dato.altura:0:2);
        l := l^.sig;    
    end;
end;
var
    l: lista;
begin
    l := nil;
    armarLista(l);
    leerLista(l);
end.