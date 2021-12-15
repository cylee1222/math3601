clc
clear

function y=f(x)
    y=%e^x*cos(x)
endfunction

I=-(%e^%pi+1)/2

printf("\ncomposite trapezoidal rule\n")
printf("\n")
printf("n    In(f)            En=I(f)-In(f)\n")

n = 2
printf("%d    ",n)
h = %pi/n
In = 0
for i=linspace(0,%pi,n+1)
    if (i == 0) | (i == %pi)
        In = In + f(i)
    else
        In = In + 2 * f(i)
    end
end
In = In * h / 2
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 4
printf("%d    ",n)
h = %pi/n
In = 0
for i=linspace(0,%pi,n+1)
    if (i == 0) | (i == %pi)
        In = In + f(i)
    else
        In = In + 2 * f(i)
    end
end
In = In * h / 2
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 8
printf("%d    ",n)
h = %pi/n
In = 0
for i=linspace(0,%pi,n+1)
    if (i == 0) | (i == %pi)
        In = In + f(i)
    else
        In = In + 2 * f(i)
    end
end
In = In * h / 2
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 16
printf("%d    ",n)
h = %pi/n
In = 0
for i=linspace(0,%pi,n+1)
    if (i == 0) | (i == %pi)
        In = In + f(i)
    else
        In = In + 2 * f(i)
    end
end
In = In * h / 2
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 32
printf("%d    ",n)
h = %pi/n
In = 0
for i=linspace(0,%pi,n+1)
    if (i == 0) | (i == %pi)
        In = In + f(i)
    else
        In = In + 2 * f(i)
    end
end
In = In * h / 2
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 64
printf("%d    ",n)
h = %pi/n
In = 0
for i=linspace(0,%pi,n+1)
    if (i == 0) | (i == %pi)
        In = In + f(i)
    else
        In = In + 2 * f(i)
    end
end
In = In * h / 2
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 128
printf("%d    ",n)
h = %pi/n
In = 0
for i=linspace(0,%pi,n+1)
    if (i == 0) | (i == %pi)
        In = In + f(i)
    else
        In = In + 2 * f(i)
    end
end
In = In * h / 2
printf("%.10f   ",In)
printf("%.10f\n",I-In)
