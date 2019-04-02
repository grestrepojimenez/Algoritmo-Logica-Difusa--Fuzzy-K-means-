function [w]=distancias(w,c)

     for i=1:w.k
         for j=1:w.n
            w.distancias(i,j)=sqrt((w.medicinas(j,1)-w.c(i,1))^2+(w.medicinas(j,2)-w.c(i,2))^2); %formula de distancia euclidiana
          % distancias(i,j)=dist(d(j,1),c(i,1))
         end
     end
     
end