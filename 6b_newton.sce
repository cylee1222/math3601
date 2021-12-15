clc
clear
printf("Find the smallest positive root of the equation x^4-x-10=0 using newton method")
printf("\nThe program may not terminate")
printf("\nTo terminate, press ctrl/cmd + c")

function f=f(x)
    f=x^4-x-10
endfunction

function g=g(x)
    g=4*x^3-1
endfunction

e=0.001
a=0
x=0
n=0
while a<%inf
    b=a+1
    if f(a)==0 && a~=0
        x=a
        break
    elseif f(a)*f(b)<0
        x=a
        break
    end
    a=a+1
end

printf("\n\nn x     f(x)    f''(x)")
printf("\n%d %.3f %.3f %.3f",n,x,f(x),g(x))

while abs(f(x))>=e
    x=x-f(x)/g(x)
    n=n+1
    printf("\n%d %.3f %.3f %.3f",n,x,f(x),g(x))
end
printf("\nThe root of the equation x^4-x-10=0 is %.3f",x)

// initial approximation = n∈[n,n+1] for some nonnegative integer n
// such that the root of the equation x*∈[n,n+1]
