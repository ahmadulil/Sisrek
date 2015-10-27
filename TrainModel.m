clc;
clear;
for i=1:6
    nama=strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas US\Sisrek\Sisrek_1103124323_1103120090\Apple\Latih_Apple_1103124323_0 ',int2str(i),'.bmp');
    img=imread(nama);
	a=im2bw(img);
    a=(~a);
    model(1,i,:)=ekstraksi(a);
	warna(1,i,:)=colorMoments(img);
	tekstur(1,i,:)=glcm(img);
end
for i=1:6
    nama=strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas US\Sisrek\Sisrek_1103124323_1103120090\Pear\Latih_Pear_1103124323_0 ',int2str(i),'.bmp');
    img=imread(nama);
	a=im2bw(img);
    a=(~a);
    model(2,i,:)=ekstraksi(a);
	warna(2,i,:)=colorMoments(img);
	tekstur(2,i,:)=glcm(img);
end
for i=1:6
    nama=strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas US\Sisrek\Sisrek_1103124323_1103120090\Stoberi\Latih_Stoberi_1103124323_0 ',int2str(i),'.bmp');
    img=imread(nama);
	a=im2bw(img);
    a=(~a);
    model(3,i,:)=ekstraksi(a);
	warna(3,i,:)=colorMoments(img);
	tekstur(3,i,:)=glcm(img);
end
for i=1:6
    nama=strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas US\Sisrek\Sisrek_1103124323_1103120090\Banana\Latih_Banana_1103124323_0 ',int2str(i),'.bmp');
    img=imread(nama);
	a=im2bw(img);
    a=(~a);
    model(4,i,:)=ekstraksi(a);
	warna(4,i,:)=colorMoments(img);
	tekstur(4,i,:)=glcm(img);
end
save('model.mat','model','tekstur','warna');