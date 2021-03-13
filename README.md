## 시스템 품질 변화로 인한 사용자 불편 예지 AI 경진대회
-------------------------------------------------

### 주제
- 비식별화 된 시스템 기록(로그 및 수치 데이터)을 분석하여 시스템 품질 변화로 사용자에게 불편을 야기하는 요인을 진단

### 일정
- 2021.01.06 ~ 2021.02.03

### 주최/주관
- 주최 : LG AI Research
- 주관 : 데이콘

### 팀 구성
- 개인 참가

### 폴더 구성 

    .
    ├── data                     # 사용한 데이터 관련 폴더
    │   ├── raw                  # 데이콘 제공 원시 데이터 
    │   ├── intermediate         # 데이터 가공 중간 산출물 
    │   ├── final                # 데이터 최종 산출물 
    │   
    ├── docs                     # 발표 자료
    ├── eda                      # 데이터 탐색, 결론 분석에 대한 스크립트 파일
    │   ├── eda.ipynb            # EDA notebook 파일 
    │   ├── eda.html             # 위 notebook를 가독성있게 볼 수 있는 문서
    │   ├── eda_files            # 시각화 결과물 
    │
    ├── model                    # 모델링 코드 notebook, 리더 보드 최종 제출본 보관 폴더 
    │
    ├── preprocessing            # 전처리에 사용한 코드 보관
    │   ├── preprocessing.ipynb    
    │   ├── run_fpca_hour.R       
    │
    ├── requirements.txt         # 필요 패키지 목록
    └── README.md               

> 실행 환경 :  google colab(CPU: Intel Xeon 2.2GHz
RAM: 13GB, Python 3.6.9), 필요 패키지는  `requirements.txt` 에 작성


### 결과
- public/private lb score : 4등
