clear all;
close all;
clc

%data.txt파일 가져와서 mat으로 저장하기
cd ..//data

xx = dir;
for i=1:1066
    data_a = importdata(xx(i+2).name);
    
    fs = sprintf("save ..//matfile//data%04d data_a",i);
    eval(fs);
    
    clear data;
end


% mat형식의 data file 가져와서 변수 저장
cd ..//matfile

xt = dir;

for i=1:1066
    data_b = importdata(xt(i+2).name);
    
    fd = sprintf("data%04d = data_b",i);
    eval(fd);
    
    clear data;
end



%작업공간 속 변수들을 파일로 저장

cd ..//main_code
save("save_data_params");

