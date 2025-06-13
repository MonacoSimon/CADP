//Una maternidad dispone información sobre sus pacientes. De cada una se conoce: nombre, apellido y peso
//registrado el primer día de cada semana de embarazo (a lo sumo 42). La maternidad necesita un programa
// que analice esta información, determine e informe:
// a. Para cada embarazada, la semana con mayor aumento de peso.
// b. El aumento de peso total de cada embarazada durante el embarazo.

program ejercicio4;
const
    dimf=42;
Vpeso=array[1..dimf] of real;
type
    str50=string[50];
    paciente=record
        nombre:str50;
        ape:str50;
        peso:Vpeso;
        semana:integer;
    end;
    lista=^nodo;
    nodo=record
        dato:paciente;
        sig:lista;
    end;
//procedure leerPaciente(var p:paciente); se dispone
// procedure cargarLista(var l:lista); se dispone

procedure procesar(l:lista, diml:integer);
var
    i:integer;
    maxTotal:real;
    semana: integer;
    maxact:real;
    sig:real;
begin
    maxTotal:=0;
    semana:=0;
    maxact:=0;
    while(l<> nil)do begin
        maxTotal:=0;
        semana:=0;
        maxact:=l^.dato.peso[2] - l^.dato.peso[1];
        for i:=2 to diml do begin
            sig:=l^.dato.peso[i] - l^.dato.peso[i-1];
            maxTotal:=maxTotal+ sig;
            if (sig > maxact) then begin
                maxact:=sig;
                semana:=i;
            end;
    end;
        writeln('El aumento de peso total de ', l^.dato.nombre, ' ', l^.dato.ape, ' es: ', maxTotal:0:2);
        writeln('La semana con mayor aumento de peso es: ', semana);
        l:=l^.sig;
    end;
end;

var
    l:lista;
    diml:integer;
begin
    l:=nil;
    cargarLista(l); //se dispone
    procesar(l, diml);
end.