function x=Astar(grid,hs)

    ways=[1];    
    gs=[0];    
    fs=[0];
    x=[];         
        
    while(isempty(ways)~=1)
        [v i]=min(fs);                                
        
        nGs=G(grid,ways(i),gs(i));
        nFs=nGs+hs;
        x=[x ways(i)];
        
        if(hs(ways(i))==0)
            return;
        end
        ways=[ways(1:i-1) ways(i+1:end)];
        gs=[gs(1:i-1) gs(i+1:end)];                        
        fs=[fs(1:i-1) fs(i+1:end)];                 
        
        for in=1:length(nGs)
            if(nGs(in)~=inf &&nGs(in)~=0)
                ways=[ways in];
                gs=[gs nGs(in)];
                fs=[fs nFs(in)];
            end
        end        
    end               
end