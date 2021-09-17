clear;
clc


% Data
data = [1 2 1 1, 3 3 4 7, 2 1 1 7];
    [kolom, baris] = size (data);
    h = zeros(1,7);
    
    
    for x = 1 : kolom
        for y = 1 : baris
            ii = data (x,y);
            h (ii) = h(ii) + 1;
        end
    end
    
    figure (1)
    bar (h)
    axis ([0 8 0 8])
    grid on
   
    
 % KOMULATIF
 komulatif = zeros(1,7);
    for k = 1 : 7
        komulatif(k) = sum(h(1:k));
    end
    
    figure (2)
    bar (komulatif)
    axis ([0 8 0 15])
    grid on
    
 
 %EQUALISIER
 equaliser = zeros (1,7);
 for e = 1 : 7
     equaliser (e) = round (komulatif(e) * 7 / (kolom*baris));
 end
 
 figure (3)
 bar (equaliser)
 axis ([0 8 0 15])
 grid on