program ejercicio5;

const
    dimf=100;

type
    camion=record
        patente:str50;
        aniofab:integer;
        capacidad:real;
    end;
    
    Vcamcion=array[1..dimf] of camion;