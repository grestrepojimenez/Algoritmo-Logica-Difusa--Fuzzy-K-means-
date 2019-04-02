function []=graficar(w,it,op)

    if(it==0)
        plot(w.medicinas(:,1),w.medicinas(:,2),'.'); %grafico los medicinas iniciales
        xlim([0 max(w.medicinas(:,1))+1]); %para que los puntos no queden al borde de la grafica
        ylim([0 max(w.medicinas(:,2))+1]);%para que los puntos no queden al borde de la grafica
        title('K.means');
        xlabel('Peso');
        ylabel('Ph');
        hold on
    end
    
     if (it>0)
        hold off;
        plot(w.medicinas(:,1),w.medicinas(:,2),'.'); %grafico los medicinas iniciales
        xlim([0 max(w.medicinas(:,1))+1]);%para que los puntos no queden al borde de la grafica
        ylim([0 max(w.medicinas(:,2))+1]);%para que los puntos no queden al borde de la grafica
        title('K.means');
        xlabel('Peso');
        ylabel('Ph');
        hold on
        plot(w.c(:,1),w.c(:,2),'O'); %grafico los centroides
        pause(0.2) % para mostrar una especie de "animacion" del cambio de los centroides
     end
    
        if(op==1)
                                   dt=w.medicinas';  
            for m=1:w.k
            suma=zeros(2,w.k);
            cont=0;
            celd=rand;
            colr=rand;
            cald=rand;
            for j=1:w.n
                if (w.minimos(m,j)==1)
                    plot(dt(1,j),dt(2,j),'.', 'color', [celd colr cald]); %suma para sacar el punto medio
                    hold on
                end
            end
            end
            
           if (w.k>2)
               
               drawnow
              voronoi(w.c(:,1),w.c(:,2),'O'); % si se puede triangular hace un grafico de voronoi de acuerdo a los centroides finales
       %   plot(w.medicinas(:,1),w.medicinas(:,2),'.'); 
           end
        end
        

        
        
 
end