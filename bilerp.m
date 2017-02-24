function value = bilerp(img1, row, col)
    [n,m]=size(img1);
    if((row<1 || row>n) || (col<1 || col>m))
    	value=0;
    else
    	j=ceil(col);
    	
    	a=lerp(img1(:,j-1),row);
    	b=lerp(img1(:,j),row);
       	v=[a,b];  
    	col=col- floor(col)+1;
    	value=lerp(v,col);
    	% T=[cos(pi/4) -sin(pi/4);sin(pi/4) cos(pi/4)]
end