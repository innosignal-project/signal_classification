## 프로젝트 진행과정과 진행하면서 생긴 이슈, 이슈해결, 그래프도식화 등을 나타낸 발표파일 입니다.

### 1066개의 파일, 1개의 파일당 약 10만개의 데이터를 가진 데이터를 가지고 불량 데이터를 적출하는 프로젝트

- 데이터를 그래프로 도식화하여 어떤 형태를 가지고 있고 신호 데이터가 의미하는 정보를 확인, 신호데이터를 가공함에 앞서 필요한 신호에 관한 공부도 같이 병행

*데이터를 그래프로 도식화
![데이터를 그래프로 도식화](https://user-images.githubusercontent.com/54656838/68354888-fce37d00-0150-11ea-815f-d9129ce0f3cd.jpeg)


*FFT한 데이터를 도식화(복소평면이라 이상한 모양이 도출)
![FFT한 데이터 도식화(복소평면이라 이상한 모양)](https://user-images.githubusercontent.com/54656838/68354969-2ef4df00-0151-11ea-903d-81aec756f8fa.jpeg)
- 데이터를 FFT 하여 X축 도메인을 주파수도메인으로 바꿈. 이상한 모양이 도출되는 것을 확인.
- FFT 를 할 경우 복소평면에서 그래프가 나타나므로 abs()함수를 사용하여 제대로된 그래프를 출력해야하는 것을 확인.

*abs()함수를 써서 제대로 된 그래프를 출력
![FFT 한 데이터 도식화](https://user-images.githubusercontent.com/54656838/68355092-8bf09500-0151-11ea-94d0-9841dccd126b.jpeg)
- abs()함수를 적용할 경우 제대로 된 그래프가 출력되는 것을 알 수 있음.
- 복소수는 켤레복소수이므로 magnitude가 2개로 갈라져서 나타나는 것을 확인(cutoff를 사용하여 앞부분만 도출가능)
- Python 에서 FFT 적용을 할 경우 cutoff가 적용되어 앞부분만 나타나는 것을 확인할 수 있음.

*Signal analyzer 를 이용해 그래프 출력
![Signal analyzer 그래프](https://user-images.githubusercontent.com/54656838/68451583-ae0e1400-0232-11ea-979d-0547a7d0e758.jpeg)

- Matlab의 앱 기능중 신호분석기라는 앱을 사용하여 그래프를 간단하게 출력할 수 있다는 것을 확인.

*FFT 를 사용하여 이상데이터를 예상해볼 수 있다고 가정.
![FFT 를 사용한 불량데이터예상](https://user-images.githubusercontent.com/54656838/68660807-36ffb500-057d-11ea-9912-36bc2411f798.jpeg)
- 그래프를 보면 데이터의 진폭(A)-주파수 그래프의 모양이 상이하다는 것을 발견할 수 있었음.
- 그래프의 모양이 상이한 데이터를 불량데이터라고 예상할 수 있다고 생각.
- 예상 불량데이터에 RMS 함수를 적용하여 그래프를 출력해보면 이상 데이터를 적출할 수 있을 것이라 가정.

*RMS 함수를 적용한 그래프 출력
![RMS 그래프](https://user-images.githubusercontent.com/54656838/68528482-9324c800-0336-11ea-8820-b5aadb05075a.jpeg)

*RMS 함수를 적용한 그래프 중 앞부분(초기 용접 주파수), 뒷부분(overlap)을 제외한 본 데이터를 추출
![RMS 패너](https://user-images.githubusercontent.com/54656838/68528483-9ddf5d00-0336-11ea-905d-6af3ee58eb85.jpeg)

*RMS 함수를 사용한 그래프를 통한 이상데이터 예상
![RMS 함수를 사용한 그래프를 통한 불량데이터예상](https://user-images.githubusercontent.com/54656838/68660846-4aab1b80-057d-11ea-9b0d-ed7a25230fd2.jpeg)
- FFT 한 그래프를 토대로 불량데이터를 1차적으로 예상하여 검출할 수 있을 것이라 생각했으나 잘못된 가정이었음을 확인.
- 방향을 바꿔서 모든 데이터를 RMS 함수를 적용하여 변화가 큰폭으로 바뀌는 불량데이터를 검출하기로 계획.

*movRMS 를 사용하여 그래프를 통한 불량 데이터검출이 가능할 것이라고 생각하고 movRMS 를 적용한 데이터를 하나의 변수에 저장한 후 plot 을 찍어보니 불량데이터 발견
![movRMS 그래프를 통한 불량 데이터검출](https://user-images.githubusercontent.com/54656838/68723731-ce581d00-05fc-11ea-8bca-a35400a071eb.jpeg)

*전체데이터의 movRMS를 적용한 그래프(이상데이터 확인)
![1066개의 movRMS를 적용한 데이터의 그래프](https://user-images.githubusercontent.com/54656838/68723795-0b241400-05fd-11ea-8a78-35cfa6506451.jpeg)

*이상데이터 검출! 
![불량데이터적출](https://user-images.githubusercontent.com/54656838/68723820-1a0ac680-05fd-11ea-8cc8-0c6c924c5146.jpeg)

*735번 데이터가 이상임을 확인!
![735번 불량데이터](https://user-images.githubusercontent.com/54656838/68723891-58a08100-05fd-11ea-9c09-4cf298c27aaa.jpeg)

*matlab 신호분석기(signal analyzer)를 사용해서 이상데이터가 검출할 수 있는 것을 볼 수 있다.
![신호분석기를 사용한 불량데이터 검출](https://user-images.githubusercontent.com/54656838/68819448-5d336b00-06cb-11ea-8c7e-b4a842654464.jpeg)

*matlab 에서 직접 STFT 함수를 구현하여 plot을 찍어봐도 이상데이터가 검출되는 것을 볼 수 있다.
![matlab plot 불량데이터검출](https://user-images.githubusercontent.com/54656838/68819612-dc28a380-06cb-11ea-9328-a29189f0efd2.jpg)

*이상데이터를 찾았으면 그 이상데이터를 불량 데이터인지 확인을 거친 후에(노이즈, 이상패턴) 불량데이터 임을 규정.
