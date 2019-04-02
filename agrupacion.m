function [w]=agrupacion(w)

     %agrupacion por criterio de distancia minima
     for i=1:w.k
         for j=1:w.n
             if (w.distancias(i,j)==min(w.distancias(:,j))) %haya el minimo del grupo (columna)
                w.minimos(i,j)=1; % a esa posicion del minimo le asigna 1
             else
                 w.minimos(i,j)=0; % si no es un minimo le asigna 0
             end
         end
     end
     
end