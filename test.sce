clc
clear

function y=f(x)
    y=1/(1+x^2)
endfunction

function y=p2(x)
    y=1/26+5*(x+5)/26-x*(x+5)/26
endfunction

function y=p4(x)
    y=0.005305*x^4-0.171088*x^2+1
endfunction

function y=p8(x)
    y=0.000137*x^8-0.00658*x^6+0.098188*x^4-0.528121*x^2+1
endfunction

function y=p12(x)
    y=-0.000239*x^10+0.005636*x^8-0.061144*x^6+0.317957*x^4-0.783313*x^2+1
endfunction

function y=p30(x)
    y=-0.000037*x^10-0.000605*x^9-0.005927*x^8-0.038183*x^7-0.169246*x^6-0.521761*x^5-1.092917*x^4-1.419244*x^3-0.752661*x^2+0.707682*x+1.249507
endfunction


printf("\n")

n = 2
printf("n = 2\n\n")
printf("x          f(x)        p2(x)\n")
for i=0:2*n-1
    x = -5+i*10/(2*n-1)
    printf("%.6f   %.6f   %.6f\n",x,f(x),p2(x))
end

n = 4
printf("\nn = 4\n\n")
printf("x          f(x)        p4(x)\n")
for i=0:2*n-1
    x = -5+i*10/(2*n-1)
    printf("%.6f   %.6f   %.6f\n",x,f(x),p4(x))
end

n = 8
printf("\nn = 8\n\n")
printf("x          f(x)        p8(x)\n")
for i=0:2*n-1
    x = -5+i*10/(2*n-1)
    printf("%.6f   %.6f   %.6f\n",x,f(x),p8(x))
end

n = 12
printf("\nn = 12\n\n")
printf("x          f(x)        p12(x)\n")
for i=0:2*n-1
    x = -5+i*10/(2*n-1)
    printf("%.6f   %.6f   %.6f\n",x,f(x),p12(x))
end

n = 30
printf("\nn = 30\n\n")
printf("x          f(x)        p30(x)\n")
for i=0:2*n-1
    x = -5+i*10/(2*n-1)
    printf("%.6f   %.6f   %.6f\n",x,f(x),p30(x))
end
