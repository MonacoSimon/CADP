program ejercicio6;
var
    codigo:integer; precio:integer;
    barato1, barato2: integer; codigo1, codigo2:integer;
    contProduct:integer; i:integer;
begin
    barato1:=9999; 
    barato2:=9999;
    codigo1:=0;
    codigo2:=0;
    contProduct:=0;
    for i:=1 to 5 do 
    begin
        write('escriba el codigo: ');
        read(codigo);
        write('escriba precio: ');
        read(precio);
        if((codigo>=1) and (codigo <= 200))then begin
            if (precio < barato1) then begin
                barato2:=barato1;
                barato1:= precio;
                codigo1:=codigo;
                codigo2:=codigo;
            end
            else
                if(precio < barato2)then
                    barato2:=precio;
                    codigo2:=codigo;
        if((precio >=16) and (precio mod 2 = 0))then
            contProduct:=contProduct+1;
        end
        
    end;
    writeln(codigo1);
    writeln(codigo2);
    writeln(contProduct);
end.