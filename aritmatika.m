function ar = aritmatika(a,x)
    ar = imread(a); %membaca citra
    R  = ar(:,:,1); %mendapatan komponen R
    G  = ar(:,:,2); %mendapatkan komponen G
    B  = ar(:,:,3); %mendapatkan komponen B
    abu2 = (0.2989*R)+(0.5870*G)+(0.1141*B); %mengambil nilai rata" rgb
    
    operasi1 = abu2+x; %operasi aritmatika penjumlahan
    operasi2 = abu2-x; %operasi aritmatika pengurangan
    operasi3 = abu2*x; %operasi aritmatika perkalian
    operasi4 = abu2/x; %operasi aritmatika pembagian
    %figure,imshow(operasi1);
    figure()
    subplot(2,4,1), imshow(operasi1), title('Penjumlahan'); %Menampilkan citra hasil operasi1
    subplot(2,4,2), imhist(operasi1); %Menampilkan histogram operasi1
    subplot(2,4,3), imshow(operasi2), title('Pengurangan');%Menampilkan citra hasil operasi2
    subplot(2,4,4), imhist(operasi2); %Menampilkan histogram operasi2
    subplot(2,4,5), imshow(operasi3), title('Perkalian'); %Menampilkan citra hasil operasi3
    subplot(2,4,6), imhist(operasi3);  %Menampilkan histogram operasi3
    subplot(2,4,7), imshow(operasi4), title('Pembagian'); %Menampilkan citra hasil operasi4
    subplot(2,4,8), imhist(operasi4); %Menampilkan histogram operasi4  
end

