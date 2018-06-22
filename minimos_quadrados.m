% FUN��O  minimos_quadrados
% @parametro xlin => valores do eixo x
% @parametro ylin => valores do eixo y

% @parametro fminsearchChoose => escolhe o modo de achar os valores km e k
%  fminsearchChoose = true => utiliza a fun��o fminsearch do matlab
%  ''               = false => utiliza o m�todo dos minimos quadrados


function [ km,k ] = minimos_quadrados( xlin,ylin, fminsearchChoose )

    nx=length(xlin);
    ny=length(ylin);

    %verifica se os vetores x e y tem o mesmo no. De elementos
    if(nx~=ny)
       error('os vetores x e y n�o possuem o mesmo tamanho');
       exit();
    end

    if (fminsearchChoose)
        %fun��o a ser minimizada (a de res�duo)
        funObj = @(c)sum((ylin - c(2) - c(1)*xlin).^2);
        %configura��es da fun��o
        options = optimset('MaxIter',5000,     ... %N�mero max de itera��es
                           'MaxFunEvals',5000, ... %Maximum number of function evaluations allowed, a positive integer
                           'TolFun',1e-6,      ... %Valor de tolerancia Y
                           'TolX',1e-6 );      ... %Valor de tolerancia X
        c=[0 0]; %Chute inicial
        [opt,fval,exitflag]=fminsearch(funObj,c,options);

        km = 1/opt(2);
        k = opt(1)/opt(2);

    else
        Sx = sum(xlin);
        Sy = sum(ylin);

        Sxy=sum(xlin.*ylin);
        Sxx=sum(xlin.^2);

        a1=(nx*Sxy-Sx*Sy)/(nx*Sxx-Sx.^2); %slope
        a0=(Sxx*Sy-Sxy*Sx)/((nx*Sxx)-(Sx.^2)); %intercept

        km=1/a0;
        k=a1/a0;
    end

end
