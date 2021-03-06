% Formula das Diferenças regressivas em 2 pontos
% f'(xi)=(f(x(i))-f(x(i-1))/h
% INPUT:  f - função
%         [a, b] - intervalo de deriva玢o
%         h - passo da discretiza玢o
%         y - imagens x vs y
% OUTPUT: [x, y] - malha de pontos
%         dydx - derivada de f 
%
%Alunos:
%Ana Sofia Janeiro 2019132578
%Bruno Teixeira 2019100036
%Rafael Ribeiro 2019131989
%Gonçalo Correia 2019150122
function [x,y,dydx]=DI_DFRegressivas_2(f,a,b,h,y)
x=a:h:b;
n=length(x);
if nargin==4
    y=f(x);
end
dydx=zeros(1,n);
dydx(1)=(y(2)-y(1))/h;
for i=2:n
    dydx(i)=(y(i)-y(i-1))/h;
end