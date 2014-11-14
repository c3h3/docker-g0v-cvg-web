
FROM c3h3/oblas-py278

MAINTAINER Chia-Chi Chang <c3h3.tw@gmail.com>

RUN git clone https://github.com/c3h3/councilor-voter-guide.git /tmp/g0v-cvg && cd /tmp/g0v-cvg && git checkout 11a90d6e0eca89450654e0788f938b586f488484


