
function conjugateGradientMethod(A,b,x_n)
r = b-A*x_n
p = r

        for i = 1:length(b)
                alfa = (r'*r)/(p'*A*p)
                x_new = x_n+alfa*p
                r_new = r-alfa*A*p
                beta = (r_new'*r_new)/(r'*r)

                display(x_new)
                if(sqrt((r'*r))<10^-10)

                        display(["I : " i])
                        break;
                end
                p_new = r_new+beta*p
                p = p_new
                r = r_new
                x_n = x_new
        end
        return x_n;
end 

