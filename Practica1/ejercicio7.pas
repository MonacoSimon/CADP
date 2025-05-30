program letra;
var
    caracter1:char;
    cont:integer;
    i:integer;
begin
    cont:=0;
    for i:=1 to 3 do
    begin
        Write('escriba un caracter: ');
        readln(caracter1);
        if((caracter1='a') or (caracter1='e') or (caracter1='i') or (caracter1='o') or (caracter1='u'))then
            cont:=cont+1;
    end;
    if(cont=3)then
        Write('las tres son vocales')
    else
        Write('al menos un caracter no es vocal')
        
end.