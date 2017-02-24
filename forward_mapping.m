function img_out = forward_mapping(img_in, T)
    % Creati o noua imagine prin aplicarea transformarii T pe imaginea
    % img_in (grayscale image), folosind forward mapping.
    %
    % Inputs
    % ------
    % img_in: imaginea care trebuie sa fie transformata.
    %      T: transformarea care trebuie aplicata asupra imaginii.
    %         matrice de 2x2.
    %
    % Outputs
    % -------
    % img_out: imaginea transformata (grayscale).

    %TODO
    img=imread(img_in);
    xmin=1;
    xmax=1;
    ymax=1;
    ymin=1;
    [n,m]=size(img);    
    
    for i=1:n
        for j=1:m
            v=[i;j];
            v=T*v;
            v=round(v);
            if(v(1)>xmax)
                xmax=v(1);
            end
            if(v(1)<xmin)
                xmin=v(1);
            end
            if(v(2)<ymin)
                ymin=v(2);
            end
            if(v(2)>ymax)
                ymax=v(2);
            end
            
            
        end
    end
   img_out=zeros(xmax-xmin+1,ymax-ymin+1);
    for i=1:n
        for j=1:m
            v=[i;j];
            v=T*v;
            v=round(v);
            img_out(v(1)-xmin+1,v(2)-ymin+1)=img(i,j);
        end
    end
    a=xmin;
    b=ymin;

    imwrite(mat2gray(img_out),"pasare.png");
end


