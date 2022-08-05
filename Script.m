clear all;close all;clc;


%static fusion
% I=load_images('images\garage\',1);   
% F=DSIFT_fusion(I,16,2,1);
% figure,imshow(F);
% 
% %flash and no-flash
% I=load_images('images\flash\',1);
% F=DSIFT_fusion(I,16,2,1);
% figure,imshow(F);


%% set data path
data_path='C:/data/MEFB_IF/';
output_path='./results/';
a = [1:100];
%% get flist
% flist=dir(data_path);
% fullfile连接路径
% dir找出路径下所有文件
% fileFolder=fullfile([data_path,'oe']);
% tmp=dir(fullfile(fileFolder,'*.png'));
% 这里用花括号括住才能拿到所有数据
% flist={tmp.name};
% 从cell里拿数据要用花括号
% disp(flist{1});
%% loop
tic
for i = a
    p = [data_path,num2str(i)];
    d_path = [output_path, num2str(i), '.png'];
    I=load_images(p,1);
    F=DSIFT_fusion(I,16,2,1);
    imwrite(F, d_path)
end
toc













