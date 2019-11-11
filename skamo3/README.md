## 주찬's workspace
 -project github upload
 -진행과정 공유 및 저장을 위한 github


2019.11.06  
FFT 이해를 위해 주파수, 파장, 진폭 등 신호관련 기초 공부

2019.11.07  
matlab 기초 명령어 학습

2019.11.08  
data를 편하게 불러오기 위한 작업  
txt -> mat -> struct로 저장

2019.11.09  
matlab 신호분석기 앱의 전처리 칸에 RMS 항목이 없음 -> 다른 사람들과의 matlab 버전 차이인듯 함  

2019.11.11  
data0001의 앞 뒤 부분을 잘라내고 window를 나눠 각 window별 rms를 구한 후 전체의 평균을 구한 뒤 window별로 빼보면 어떨까?
--> 가설 : rms 구한 뒤 각 rms - mean(rms) 값이 일정하지 않고 편차가 심한 데이터가 오류 데이터일 것이다
