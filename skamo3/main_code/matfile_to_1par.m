clear
close all;
clc
% x = load('..//data//data0001.txt')'

%mat ���� ��ü �ϳ��ϳ��� �ϳ��� ������ ����
for i = 1:1066
    data_name = ['..//matfile//data',num2str(i),'.mat'];
    xs(i) = load(data_name);

end

% mat�������� ���� ����
save('total_data');

% ��ü�� ������ �Ǳ⶧���� ��ȣ�м��� �ۿ��� ��� �Ұ���