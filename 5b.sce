clc
clear

function x1=x1(x2,x3)
    x1=(-1+2*x2-3*x3)/5
endfunction

function x2=x2(x1,x3)
    x2=(2+3*x1-x3)/9
endfunction

function x3=x3(x1,x2)
    x3=(-3+2*x1-2*x2)/7
endfunction

printf("Solve linear system using Jacobi method\n")

a=0
b=0
c=0

for i = 1:10
    printf("\n iteration %d:",i)
    printf("\n x1 = %.6f",x1(b,c))
    printf("\n x2 = %.6f",x2(a,c))
    printf("\n x3 = %.6f",x3(a,b))
    prev_a=x1(b,c)
    prev_b=x2(a,c)
    prev_c=x3(a,b)
    a=prev_a
    b=prev_b
    c=prev_c
    printf("\n")
end

printf("----------------------------------------------\n")
printf(" Solve linear system using Gauss-Seidel method\n")

a=0
b=0
c=0

for i = 1:10
    printf("\n iteration %d:",i)
    printf("\n x1 = %.6f",x1(b,c))
    printf("\n x2 = %.6f",x2(a,c))
    printf("\n x3 = %.6f",x3(a,b))
    a=x1(b,c)
    b=x2(a,c)
    c=x3(a,b)
    printf("\n")
end

