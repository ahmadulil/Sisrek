function hasil = matchingwarna(input)
load modelwarna.mat
ind=0;
for i=1:4
	for j=1:6
		ind=ind+1;
		d(ind,:)=model(i,j,:);
	end
end

for i=1:24
	ha(i)=norm(d(i)-input);
end
[id,da]=sort(ha);
hasil=da(1);
id(1);
end

