clear
close all;
clc
% x = load('..//data//data0001.txt')'

%mat 파일 객체 하나하나를 하나의 변수에 저장
for i = 1:1066
    data_name = ['..//matfile//data',num2str(i),'.mat'];
    xs(i) = load(data_name);

end

% mat형식으로 파일 저장
save('total_data');