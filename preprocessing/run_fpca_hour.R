# 아래의 3가지 패키지 설치 필요
# install.packages(funData)
# install.packages(fdapace)
# install.packages(MFPCA)

require("funData")
require("fdapace")
require("MFPCA")

# 시간별 퀄리티 변수별 agg sum한 파일 불러오기
train_fpca_quality = read.csv('../data/intermediate/train_fpca_quality_hours.tsv', sep = '\t')
test_fpca_quality = read.csv(  '../data/intermediate/test_fpca_quality_hours.tsv', sep = '\t')

dataset = rbind(train_fpca_quality, test_fpca_quality)

for (i in c(3,4,5,6,7,10,11,12,13)) { # c(3,4,5,6,7,8,9,10,11,12,13) 8번, 9번은 sparse value로 값 도출되지 않아 제외
# data를 reshape 하는 과정
dataset_ = dataset[,c(i)]
print(colnames(dataset)[i])
N = nrow(dataset)/(33*24)
seq_len = 33*24
# data = matrix(dataset, nrow = seq_len)

Ly = split(dataset_, rep(1:N, each = seq_len))
Lt = rep(list(seq(seq_len)), N)

# fpca 알고리즘 적용(퀄리티 변수별 고유값 2개씩 선택)
fpca = FPCA(Ly, Lt,list(error = FALSE, maxK=2, useBinnedData = 'OFF', verbose = TRUE))
summary = list(score=fpca$xiEst, eigenfunctions = fpca$phi)
if( i == 3) {
          rst = summary$score
} else {
          rst = cbind(rst, summary$score)
}

}

write.table(rst, file='../data/final/fpca_result_hours.tsv', quote=FALSE, sep='\t', col.names = NA)
