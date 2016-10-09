abu2 = imread('abu1.JPG'); %membaca citra input
x=50; %inisialisai variabel x sebagai r1 = 50, value bisa berubah
x1=200; %inisialisasi variabel x1 sebagai r2 = 200, value bisa berubah
y= 0; %inisialisasi variabel y sebagai s1 = 0, value bisa berubah
y1= 255; %inisialisai variabel y1 sebagai s2 = 255, value bisa berubah
L=255; %batas nilai pixel dengan 8 bit
abu2 = rgb2gray(abu2); %konvert citra input ke citra keabuan
citra= double(abu2); %membaca array citra kedalam format double
[a,b] = size(citra); %membaca ukuran matrik citra
for baris=1:a %perulangan dengan nilai baris=1 sampai baris = nilai a
for kolom=1:b %perulangan dengan nilai kolom = 1 sampai kolom = nilai b
        blank = citra(baris,kolom); %mendefinisikan citra baru
if (abu2(baris,kolom) < x) %cek kondisi jika level keabuan < x
            blank = round (abu2(baris,kolom) * (y/x)); %merubah nilai level keabuan
elseif (abu2(baris,kolom) > x1) %cek kondisi jika level keabuan > x1
            blank = y1 + round((abu2(baris,kolom)-x1) * ((L-y1)/(L-x1))) ; %merubah nilai level keabuan
else%cek kondisi untuk nilai keabuan diantara x dan x1
            blank = y + round ((abu2(baris,kolom)-x) * ((y1-y)/(x1-x))); %merubah nilai level keabuan
end
        citra(baris,kolom) = blank; %mengisi nilai level keabuan kedalam citra indek baris,kolom
end
end
Takhir = uint8(citra); %merubah nilai double ke format int
subplot(2,2,1), imshow(abu2); %menampilkan citra input
title('citra input');
subplot(2,2,2), imshow(Takhir); %menampilkan citra output
title('citra output');
subplot(2,2,3), imhist(abu2); %menampilkan histogram input
title('histogram input');
subplot(2,2,4),imhist(Takhir); %menampilkan histogram output
title('histogram output');
