function [ meana,stda,skewa ] = colormomentss( image )
[x,y,z]=size(image);
jumpix=x+y;

plater=double(image(:,:,1));
plateg=double(image(:,:,2));
plateb=double(image(:,:,3));

meana(1)=sum(sum(plater))/jumpix;
meana(2)=sum(sum(plateg))/jumpix;
meana(3)=sum(sum(plateb))/jumpix;

variance=sum(sum((plater-meana(1).^2)))/jumpix;
stda(1)=sqrt(variance);

variance=(sum(sum(plateg-meana(2)).^2))/jumpix;
stda(2)=sqrt(variance);

variance=(sum(sum(plateb-meana(3)).^2))/jumpix;
stda(3)=sqrt(variance);

skew=(sum(sum(plater-meana(1)).^3))/jumpix;
skewa(1)=skew.^(1/3);
skew=(sum(sum(plateg-meana(2)).^3))/jumpix;
skewa(2)=skew.^(1/3);
skew=(sum(sum(plateb-meana(3)).^3))/jumpix;
skewa(3)=skew.^(1/3);
meana(1)
 means=mean(double(plater(:)))
 stdr=std(double(plater(:)));
stdr
stda
skewa


% skew = sum((GLs - meanGL) .^ 3 .* pixelCounts) / ((numberOfPixels - 1) * stdDev^3);


end

