program insertarOrdenado;
type
    jugador=record
        nombre: string[50];
        apellido: string[50];
        dni: integer;
        altura: real;
    end;
    lista:^nodo;
    nodo=record
        dato:jugador;
        sig:lista;
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
procedure cargarLista(var l:lista);
var
    p: jugador;
begin
    leerJugador(p);
    while (p.dni <> 0) do begin
        insertarOrdenado(l, p);
        leerJugador(p);
    end;
end;
procedure insertarOrdenado(var l: lista; p: jugador);
var
    nue, ant, act: lista;
begin
    new(nue);
    nue^.dato := p;
    act:=l;
    ant:=l;
    while (act <> nil) and (j.altura > act^.dato.altura) do begin
            ant := act;
            act := act^.sig;
    end;
    if (act = ant) then //al inicio o lista vacia
        l:=nue;
    else //al medio o al final
      ant^.sig := nue;
    nue^.sig := act;  
end;