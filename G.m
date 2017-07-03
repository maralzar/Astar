function x=G(grid,cuNode,cuG)
    x=grid(cuNode,:);
    for i=1:length(grid)
        if(x(i)~=inf && i~=cuNode)
            x(i)=x(i)+cuG;
        end
    end    
    return;            
end