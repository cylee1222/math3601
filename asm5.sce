clc
clear

function y=f(t, x)
    y=cos(t)-sin(x)+t^2
endfunction

printf("\n4th order Runge-Kutta method\n")
printf("\n")
printf("n   tn     xn\n")

x=list()
x(1)=3
n=10
h=0.2
t=-1
for i=1:n
    k1 = f(t, x(i))
    k2 = f(t+h/2, x(i)+h/2*k1)
    k3 = f(t+h/2, x(i)+h/2*k2)
    k4 = f(t+h, x(i)+h*k3)
    x(i+1) = x(i)+h/6*(k1+2*k2+2*k3+k4)
    printf("%d   %.1f   %.10f\n",i,t+i*h,x(i+1))
end
