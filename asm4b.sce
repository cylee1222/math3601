clc
clear

function y=f(x)
    y=%e^x*cos(x)
endfunction

I=-(%e^%pi+1)/2

printf("\ncomposite Simpson''s rule\n")
printf("\n")
printf("n    In(f)            En=I(f)-In(f)\n")

n = 2
printf("%d    ",n)
h = %pi/n
In = 0
for i=0:n
    if (i == 0) | (i == n)
        In = In + f(%pi * i / n)
    elseif pmodulo(i,2) == 0
        In = In + 2 * f(%pi * i / n)
    else
        In = In + 4 * f(%pi * i / n)
    end
end
In = In * h / 3
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 4
printf("%d    ",n)
h = %pi/n
In = 0
for i=0:n
    if (i == 0) | (i == n)
        In = In + f(%pi * i / n)
    elseif pmodulo(i,2) == 0
        In = In + 2 * f(%pi * i / n)
    else
        In = In + 4 * f(%pi * i / n)
    end
end
In = In * h / 3
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 8
printf("%d    ",n)
h = %pi/n
In = 0
for i=0:n
    if (i == 0) | (i == n)
        In = In + f(%pi * i / n)
    elseif pmodulo(i,2) == 0
        In = In + 2 * f(%pi * i / n)
    else
        In = In + 4 * f(%pi * i / n)
    end
end
In = In * h / 3
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 16
printf("%d    ",n)
h = %pi/n
In = 0
for i=0:n
    if (i == 0) | (i == n)
        In = In + f(%pi * i / n)
    elseif pmodulo(i,2) == 0
        In = In + 2 * f(%pi * i / n)
    else
        In = In + 4 * f(%pi * i / n)
    end
end
In = In * h / 3
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 32
printf("%d    ",n)
h = %pi/n
In = 0
for i=0:n
    if (i == 0) | (i == n)
        In = In + f(%pi * i / n)
    elseif pmodulo(i,2) == 0
        In = In + 2 * f(%pi * i / n)
    else
        In = In + 4 * f(%pi * i / n)
    end
end
In = In * h / 3
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 64
printf("%d    ",n)
h = %pi/n
In = 0
for i=0:n
    if (i == 0) | (i == n)
        In = In + f(%pi * i / n)
    elseif pmodulo(i,2) == 0
        In = In + 2 * f(%pi * i / n)
    else
        In = In + 4 * f(%pi * i / n)
    end
end
In = In * h / 3
printf("%.10f   ",In)
printf("%.10f\n",I-In)

n = 128
printf("%d    ",n)
h = %pi/n
In = 0
for i=0:n
    if (i == 0) | (i == n)
        In = In + f(%pi * i / n)
    elseif pmodulo(i,2) == 0
        In = In + 2 * f(%pi * i / n)
    else
        In = In + 4 * f(%pi * i / n)
    end
end
In = In * h / 3
printf("%.10f   ",In)
printf("%.10f\n",I-In)
