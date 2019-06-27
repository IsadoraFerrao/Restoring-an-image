function figura2 = media(figura1)
  arq_1=double(imread(figura1));
  arq_2=double(imread(figura1));
  
  m = size(arq_1,1);
  n = size(arq_1,2);
  x = 9;
  y = 9;
  figura2='lena_toda_restaurada.bmp';
 
  for i=1:(m-x) #percorrer imagem grande
    for j=1:(n-y)
      lena=0;
        for k=1:(x)  
          for l=1:(y)
              lena=double(lena+arq_1(i+k-1, j+l-1));           
          end
        end
        lena=double(lena/(x*y));
        arq_2(i+4, j+4)=uint8(lena);
    end 
  end
  imwrite(uint8(arq_2), figura2);
return