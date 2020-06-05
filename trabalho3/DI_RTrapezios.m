%DI_RTrapezios Calculo Integra��o Num�rica atrav�s da Regra dos Trap�zios
%   t = DI_RTrapezios(f,a,b,n)
%   t = h*(f(a)+f(b)+t)/2;
%
%INPUT:
%   f - fun��o real de vari�vel real x
%   [a, b] - extremos do intervalo da vari�vel independente x
%   n - n�mero de subintervalos ou itera��es da regra
%OUTPUT: 
%   t - Resultado da �rea do Integral
%   t = h*(f(a)+f(b)+t)/2 , i=2,...,n-1

%Alunos:
%Ana Sofia Janeiro 2019132578
%Bruno Teixeira 2019100036
%Rafael Ribeiro 2019131989
%Gon�alo Correia 2019150122

function T = DI_RTrapezios(f,a,b,n)

h = (b-a)/n;
s = 0;
x=a;

for i=1:n-1
	x=x+h;
	s = s+f(x);
end

T = h/2*((f(a) +2*s + f(b)));
