clear all;
close all;
clc

%data.txt���� �����ͼ� mat���� �����ϱ�
cd ..//data

xx = dir;
for i=1:1066
    data_a = importdata(xx(i+2).name);
    
    fs = sprintf("save ..//matfile//data%04d data_a",i);
    eval(fs);
    
    clear data;
end


% mat������ data file �����ͼ� ���� ����
cd ..//matfile

xt = dir;

for i=1:1066
    data_b = importdata(xt(i+2).name);
    
    fd = sprintf("data%04d = data_b",i);
    eval(fd);
    
    clear data;
end



%�۾����� �� �������� ���Ϸ� ����

cd ..//main_code
save("save_data_params");

