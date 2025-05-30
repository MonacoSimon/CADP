program ejercicio7;
var
    nombre:string; 
    i:integer;
    tiempo:real;
    max1, max2, min1, min2:real;
    nombreMax1, nombreMax2, nombreMin1, nombreMin2:string;
begin
    max1:=-1;
    max2:=-1;
    min1:=9999;
    min2:=9999;
    tiempo:=0;
    for i:=1 to 5 do begin
        writeln('escriba nombre: ');
        readln(nombre);
        writeln('escriba tiempo: ');
        readln(tiempo);
        if(tiempo > max1)then begin
            max2:=max1;
            max1:=tiempo;
            nombreMax2:=nombreMax1;
            nombreMax1:=nombre;
        end
        else
            if(tiempo > max2)then begin
                max2:=tiempo;
                nombreMax2:=nombre;
            end;
        if(tiempo < min1)then begin
            min2:=min1;
            min1:=tiempo;
            nombreMin2:=nombreMin1;
            nombreMin1:=nombre;
        end
        else
            if(tiempo < min2)then begin
                min2:=tiempo;
                nombreMin2:=nombre;
            end
    end;
    writeln(nombreMax1, ' ', nombreMax2);
    writeln(nombreMin1, ' ' , nombreMin2);
end.