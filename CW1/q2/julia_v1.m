function [iter,z] = julia_v1(z, c, maxiter)


    function [iter, zt] = main_func(zt, ct)
        iter=1;
        while iter < maxiter
            if abs(zt) > 1
                break;
            end
           zt=zt^2 + ct; 
           iter=iter+1;
        end
    end
    [iter, z] = arrayfun(@(A,B)(main_func(A,B)),z,c);
end