function matrik2 = glcm(img)
img=rgb2gray(img);
img=gray2ind(img,4);
[h w]=size(img);
img=img+1;
maks=max(max(img));
maks=maks;
matrik2=zeros(maks,maks);
% for i=1:maks
%     for j=1:maks
%         [baris kolom]=find(img==i);
%         panjang=length(kolom);
%         temp=0;
%         for k=1:panjang
%             if (kolom(k)<5)
%                 index_kolom=kolom(k);
%                 nilai=img(baris(k),index_kolom);
%                 if (nilai==j)
%                     temp=temp+1;
%                 end
%             end
%         end
%         matrik2(i,j)=temp;
%     end
% end
for i=1:h
    for j=1:w
    end
end
matrik2
maxi=max(max(matrik2));
matrik2=norm(matrik2);
asm=sum(sum(matrik2.^2));
energi=asm.^(1/2);
[i,j]=size(matrik2);
meana1=mean(matrik2);
meana1
contras=0;
entropi=0;
homogen=0;
for k=1:i
    for l=1:j
        contras=contras+(k-l).^2*matrik2(k,l);
        entropi=-1*entropi+matrik2(i,j)*log(matrik2(k,l));
        homogen=homogen+matrik2(k,l)/(1+(k-l).^2);
%         corelasi=corelasi+((k-meani(1))*(l-meani(2))*(matrik2(i,j))/(stdi(1)*stdi(2));
    end
end
end

