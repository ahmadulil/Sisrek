clc;
clear;

for i=1:6
    nama=strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas US\Sisrek\Sisrek_1103120013_1103120012\Data\apple\Latih_Apple_1103120013_1103120012_0 ',int2str(i),'.bmp');
    a=im2bw(imread(nama));
    a=(~a);
    model(1,i,:)=ekstraksi(a);
end
for i=1:6
    nama=strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas US\Sisrek\Sisrek_1103120013_1103120012\Data\Dataset Pear\Data Latih Pear\Latih_Pear_1103120013_0 ',int2str(i),'.bmp');
    a=im2bw(imread(nama));
    a=(~a);
    model(2,i,:)=ekstraksi(a);
end
for i=1:6
    nama=strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas US\Sisrek\Sisrek_1103120013_1103120012\Data\Dataset Strawberry\Data Latih Strawberry\Latih_Strawberry_1103120013_0 ',int2str(i),'.bmp');
    a=im2bw(imread(nama));
    a=(~a);
    model(3,i,:)=ekstraksi(a);
end
for i=1:6
    nama=strcat('C:\Users\Asprak-69\Documents\Sisrek Ulil\Tugas US\Sisrek\Sisrek_1103120013_1103120012\Data\Pisang\Latih_Banana_1103120013_1103120012_0 ',int2str(i),'.bmp');
    a=im2bw(imread(nama));
    a=(~a);
    model(4,i,:)=ekstraksi(a);
end
save('modelmoment.mat','model');