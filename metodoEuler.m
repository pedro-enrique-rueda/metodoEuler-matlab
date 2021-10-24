function [] = metodoEuler(f,xx,yy,paso)
    syms x y;
    
    xx = xx(1):paso:xx(2);
    
    for i = 1:length(xx)-1
        yy(i+1) = yy(i) + subs(f,{x,y},{xx(i),yy(i)}).*paso;
    end
   
    figure(1)
    plot(xx,yy,'r')
    
end