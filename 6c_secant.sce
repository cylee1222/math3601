clc
clear
printf("Find the smallest positive root of the equation x^4-x-10=0 using secant method")
printf("\nThe program may not terminate")
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
        if abs(f(a))>=e
            x=a
        end
        if abs(f(b))>=e
            x=b
        end
        break
    end
    a=a+1
end

printf("\n\nn x     f(x)")
printf("\n%d %.3f %.3f",0,a,f(a))
printf("\n%d %.3f %.3f",1,b,f(b))


while abs(f(a))>=e && abs(f(b))>=e
    tmp=a
    a=b
    b=a-(a-tmp)/(f(a)-f(tmp))*f(a)
    x=b
    n=n+1
    printf("\n%d %.3f %.3f",n,x,f(x))
end
printf("\nThe root of the equation x^4-x-10=0 is %.3f",x)

// initial approximation = n∈[n,n+1] for some nonnegative integer n
// such that the root of the equation x*∈[n,n+1]
