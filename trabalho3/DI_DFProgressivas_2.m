% DI_DFProgressivas_2 Derivação Numérica - formula das diferenças progressivas em 2 pontos
%
% f'(xi)=(f(x(i+1))-f(x(i))/h
% INPUT:  f 
%         [a, b] - intervalo de deriva玢o
%         h - passo da discretiza玢o
%         y - imagens x vs y
% OUTPUT: [x, y] - malha de pontos
%         dydx - derivada de f 
%
%
%Alunos:
%Ana Sofia Janeiro 2019132578
%Bruno Teixeira 2019100036
%Rafael Ribeiro 2019131989
%Gonçalo Correia 2019150122


function [x,y,dydx]=DI_DFProgressivas_2(f,a,b,h,y)
    x=a:h:b;
    n=length(x);
    if nargin==4
        y=f(x);
    end
    dydx=zeros(1,n);
    for i=1:n-1
        dydx(i)=(y(i+1)-y(i))/h;
    end
    dydx(n)=(y(n)-y(n-1))/h;
    
    