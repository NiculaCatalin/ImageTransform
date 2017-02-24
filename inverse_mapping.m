function img_out = inverse_mapping(img_in,T)
    
    img=imread(img_in);
    xmin=0;
    xmax=0;
    ymax=0;
    ymin=0;
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

    T_t=[T(2,2) -T(1,2);-T(2,1) T(1,1)];
    T_invers=(1/( T(1,1)*T(2,2)-T(1,2)*T(2,1) ))*T_t;

    for i=1:xmax-xmin+1
        for j=1:ymax-ymin+1
            v=[i+xmin-1;j+ymin-1];
            v=T_invers*v;
            img_out(i,j)=bilerp(img,v(1),v(2));
        end
    end

    % imwrite(mat2gray(img_out),"pasare.png");
end