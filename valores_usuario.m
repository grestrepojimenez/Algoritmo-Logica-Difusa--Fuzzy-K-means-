function [w]=valores_usuario();

fprintf('------------------K-MEANS-------------------------\n');
auto=input('Ingrese: \n"1" Si desea los valores automaticamente \n"2" Si desea ingresarlos manualmente  \n"3" Medicinas de ejemplo 1 \n"4" Medicinas de ejemplo 2: \n');

switch auto
    
     case 1
        
    w.n=input('Ingrese el numero de medicinas que desea: '); %
    w.k=input('Ingrese la cantidad de clases que desea clasificar: '); % K (numero de clases)
    w.medicinas=zeros(w.n,2);
    
    w.medicinas= rand(w.n,2)*100;
    
    case 2
    
    w.n=input('Ingrese el numero de medicinas que desea: '); %
    w.k=input('Ingrese la cantidad de clases que desea clasificar: '); % K (numero de clases)
    w.medicinas=zeros(w.n,2);

    for i=1:w.n
        fprintf('Ingrese peso de medicina (%d): ', i);
       w.medicinas(i,1)= input('');
        fprintf('Ingrese Ph de medicina (%d): ', i);
       w.medicinas(i,2)= input('');
       
    end
    
    case 3
    w.n=4;
    w.k=2;
    w.medicinas=zeros(w.n,2);
    w.medicinas=[1 1; 2 1;4 3; 5 4]; %medicinas ejemplo 1

    case 4
    w.n=8;
    w.k=3;
    w.medicinas=zeros(w.n,2);
    w.medicinas=[2 10; 2 5;8 4; 5 8;7 5;6 4;1 2;4 9]; %medicinas ejemplo 2

    otherwise
    clc    
    fprintf('\n\n-------OPCION INVALIDA-----\n\n');
    fprintf('-------Ingrese otra opcion-----\n');
    pause(0.7)
    clasificador_master
   
    
end


end
