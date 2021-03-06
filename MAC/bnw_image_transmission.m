img=imread('House1.jpg');
f=imshow(img);
C=de2bi(img);
data=reshape(C,1,length(C(:,1))*length(C(1,:)));
data=double(data);
macFrame_Tx=MACwrap(data)

IPPacket=MACunwrap(macFrame_Tx);
C_r=reshape(IPPacket,length(IPPacket)/8,8);
B_r=bi2de(C_r);
img_rec=reshape(B_r',476,640);
figure;
imshow(img_rec/256);