//Regula Falsi Method:
clear
clc
  
function f = f(x)
    f = x^3 + 2*x^2 - 3*x -1 
endfunction
  
  
disp("Sample input: regulaFalsi(1,2,10^-4, 100)")
  
function regulaFalsi(a,b,TOL,N)
    i = 1
    FA = f(a)
    finalOutput = [i, a, b, a + (b-a)/2, f(a + (b-a)/2)]
      
    
     
    while(i <= N),
        p = (a*f(b)-b*f(a))/(f(b) - f(a))
        FP = f(p)
          
          
        if(FP == 0 | abs(f(p)) < TOL) then
            break
        else
             mprintf("\n n= %d\n A(%d)= %f\n B(%d)= %f\n P(%d)= %f\n F(P(%d)= %f\n)" , i, i, a, i, b, i, p, i, f(p))
        end
          
        i = i + 1
          
        if(FA*FP > 0) then
            a = p
        else
            b = p
        end
       
    end
      
    //disp(finalOutput)
      
endfunction

