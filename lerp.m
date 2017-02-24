function value = lerp(v, x)
    % Interpolare liniara unidimensionala
    %
    % Inputs
    % ------
    % v: un vector cu valorile functie
    % x: o noua pozitie in care sa se calculeze valoarea functiei

    %TODO
    n=length(v);
    if(x<1 || x>n)
    	value=0;
    else
    	i=floor(x+1);
    	if(x==n)
    		value=v(n);
    	else
    	value=v(i-1) +(v(i)-v(i-1))*(x-(i-1));

    endif


end
