clc
clear
printf("Find the smallest positive root of the equation x^4-x-10=0 using bisection method")
printf("\nThe program will not terminate if there does not exist a positive root of the equation x^4-x-10=0")
printf("\nTo terminate, press ctrl/cmd + c")

function f=f(x)
    f=x^4-x-10
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
        x=(a+b)/2
        break
    end
    a=a+1
end

printf("\n\nn a     b     x     f(x)")
printf("\n%d %.3f %.3f %.3f %.3f",n,a,b,x,f(x))

while abs(f(x))>=e
    if f(a)*f(x)<0
        b=x
    else
        a=x
    end
    x=(a+b)/2
    n=n+1
    printf("\n%d %.3f %.3f %.3f %.3f",n,a,b,x,f(x))
end
printf("\nThe root of the equation x^4-x-10=0 is %.3f",x)

// initial approximation = [n,n+1] for some nonnegative integer n
// such that the root of the equation x*∈[n,n+1] => |x-x*|<=1/2 ∀x∈[n,n+1]
