function I = Greyscale(a)%fungsi untuk memanggil citra keabuan
    I = imread(a); %membaca citra
    R  = I(:,:,1); %mendapatkan komponen R
    G  = I(:,:,2); %mendapatkan komponen G
    B  = I(:,:,3); %mendapatkan komponen B
    % I = 0.2989*R  + 0.5870*G  + 0.1141*B
    abu2 = (0.2989*R)+(0.5870*G)+(0.1141*B); % mengambil nilai rata-rata rgb
    subplot(1,2,1), imshow(I), title('Citra berwarna'); %Menampilkan citra berwarna
    subplot(1,2,2), imshow(abu2), title('Citra Keabuan'); %Menampilkan citra keabuan
end