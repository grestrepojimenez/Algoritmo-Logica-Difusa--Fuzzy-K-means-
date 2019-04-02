clc; clear all; op=0;it=1;

[w]=valores_usuario();
w.c=w.medicinas(1:w.k,:); %centroides iniciales
graficar(w,it,op); %grafica los puntos iniciales

while (1)   
   [w]=distancias(w); %calculo de distancias
   [w]=agrupacion(w); % agrupacion por criterio de minima distancia
   [w]=actualizacion(w); %actualizacion de centroides
    
   if (w.c_recalculado'==w.c) 
         break % si la matriz de centroides es igual a la anterior salir del while
    else
         w.c=w.c_recalculado';
    end
      graficar(w,it,op);
     it=it+1;
end
graficar(w,it,1);

