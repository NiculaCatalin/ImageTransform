function stuff=demo()
	img='flapping_duck.png';								
	
	Oriz=T=[cos(pi) -sin(pi);sin(pi) cos(pi)];												
	Scalare=[0.4,0; 0,0.4];										
	Rot=[cos(pi/4) -sin(pi/4);sin(pi/4) cos(pi/4)]											

	M_oriz=inverse_mapping(img,Oriz);
	M_Scalare=inverse_mapping(img,Scalare);
	M_Rot=inverse_mapping(img,Rot);

	imwrite(mat2gray(M_oriz), 'Orizontal_Duck.png');
	imwrite(mat2gray(M_Scalare), 'Scaled_Duck.png');
	imwrite(mat2gray(M_Rot), '45_Duck.png');

	img='flapping_bird.png';

	M_oriz=inverse_mapping(img,Oriz);
	M_Scalare=inverse_mapping(img,Scalare);
	M_Rot=inverse_mapping(img,Rot);

	imwrite(mat2gray(M_oriz), 'Orizontal_Bird.png');
	imwrite(mat2gray(M_Scalare), 'Scaled_bird.png');
	imwrite(mat2gray(M_Rot), '45_Bird.png');

end