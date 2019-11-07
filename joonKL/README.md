## 준기's workspace
-project management를 위한 github organization 세팅
- 2019.11.05
    - DFT, FFT, STFT 에 관한 기본적인 개념 공부 및 강의 청취
    - Data preprocessing을 위한 기본적인 MATLAB 사용방법 습득
    - Data 파일을 불러와서 신호 관련 데이터를 그래프로 볼 수 있었고, FFT 함수를 적용, 그래프를 도식화해봤으나 이상한 그래프가 도출
*데이터를 그래프로 도식화
![데이터를 그래프로 도식화](https://user-images.githubusercontent.com/54656838/68354888-fce37d00-0150-11ea-815f-d9129ce0f3cd.jpeg)
*FFT한 데이터를 도식화(복소평면이라 이상한 모양이 도출)
![FFT한 데이터 도식화(복소평면이라 이상한 모양)](https://user-images.githubusercontent.com/54656838/68354969-2ef4df00-0151-11ea-903d-81aec756f8fa.jpeg)
    - 복소평면이라서 그래프가 이상하게 출력 됐음을 인지하고 abs()함수를 써서 수정.
*abs()함수를 써서 제대로 된 그래프를 출력
![FFT 한 데이터 도식화](https://user-images.githubusercontent.com/54656838/68355092-8bf09500-0151-11ea-94d0-9841dccd126b.jpeg)
- 2019.11.06
    - FFT 함수를 MATLAB으로 구현함에 있어서 필요한 주요 파라미터(Fs, length, Fr, Ts, ..)을 공부