d_L = length(data0001);
%data�� ������ window size 1/20���� ������

w1 = data0001(1 : d_L);%Ȯ�ο� ��ü ������
w2 = data0001(d_L/20 :d_L*2/20);
w3 = data0001(d_L*2/20:d_L*3/20);
w4 = data0001(d_L*3/20:d_L*4/20);
w5 = data0001(d_L*4/20:d_L*5/20);
w6 = data0001(d_L*5/20:d_L*6/20);
w7 = data0001(d_L*6/20:d_L*7/20);
w8 = data0001(d_L*7/20:d_L*8/20);
w9 = data0001(d_L*8/20:d_L*9/20);
w10 = data0001(d_L*9/20:d_L*10/20);
w11= data0001(d_L*10/20:d_L*11/20);
w12= data0001(d_L*11/20:d_L*12/20);
w13= data0001(d_L*12/20:d_L*13/20);
w14= data0001(d_L*13/20:d_L*14/20);
w15= data0001(d_L*14/20:d_L*15/20);
w16= data0001(d_L*15/20:d_L*16/20);
w17= data0001(d_L*16/20:d_L*17/20);
w18= data0001(d_L*17/20:d_L*18/20);
w19= data0001(d_L*18/20:d_L*19/20);
% w20= data0001(d_L*19/20:d_L*20/20);

%�� ������ rms�� ���ϱ�
r1 = rms(w1);
r2 = rms(w2);
r3 = rms(w3);
r4 = rms(w4);
r5 = rms(w5);
r6 = rms(w6);
r7 = rms(w7);
r8 = rms(w8);
r9 = rms(w9);
r10 = rms(w10);
r11= rms(w11);
r12= rms(w12);
r13= rms(w13);
r14= rms(w14);
r15= rms(w15);
r16= rms(w16);
r17= rms(w17);
r18= rms(w18);
r19= rms(w19);
% r20= rms(w20);

%rms���� ���� ��ġ��
r = [r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19]

%rms
rmean = mean(r);

rlist=[]
for i = 2:length(r) 
    f = ['r',num2str(i),'-rmean'];
    a = eval(f)
end