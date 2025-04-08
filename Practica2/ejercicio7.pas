program ejercicio7;
var
    nombre:string; 
    tiempo:real;
    max1, max2:string; 
    maximo1, maximo2: real;
    min1, min2: string;
    minimo1, minimo2: real;
    i:integer;
begin
    maximo1:=-9999;
    maximo2:=-9999;
    minimo1:=9999;
    minimo2:=9999;
    for i:=1 to 5 do
    begin
        write('escriba el nombre: ');
        readln(nombre);
        write('escriba el tiempo: ');
        readln(tiempo);
        if(tiempo > maximo1)then
        begin
            maximo2:=maximo1;
            max2:=max1;
            maximo1:=tiempo;
            max1:= nombre;
        end
        else
        begin
            if(tiempo > maximo2)then
            begin
                maximo2:=tiempo;
                max2:=nombre;
            end
        end;
        if(tiempo< minimo1)then
        begin
            minimo2:=minimo1;
            min2:=min1;
            minimo1:=tiempo;
            min1:=nombre;
        end
        else if (tiempo < minimo2) then
        begin
            minimo2 := tiempo;
            min2 := nombre;
        end;
    end;
    writeln('mas rapidos: ', max1, max2);
    writeln('mas lentos: ', min1, min2);
end.