function [w]=actualizacion(w)
    
 dt=w.medicinas';   
        for m=1:w.k
            suma=zeros(2,w.k);
            cont=0;
            for j=1:w.n
                if (w.minimos(m,j)==1)
                    suma(:,m)=suma(:,m)+dt(:,j); %suma para sacar el punto medio
                    cont=cont+1; % cuantos elementos pertenecen al grupo
                end
            end
            w.c_recalculado(:,m)=suma(:,m)/cont; % el punto medio de los puntos del grupo
        end
end