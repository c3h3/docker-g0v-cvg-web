
FROM c3h3/oblas-py278

MAINTAINER Chia-Chi Chang <c3h3.tw@gmail.com>

RUN git clone https://github.com/c3h3/councilor-voter-guide.git /tmp/g0v-cvg && cd /tmp/g0v-cvg && git checkout 096d9d8cee034a2eb404b727aecb76dde80c0e46

RUN apt-get update && apt-get install -y libpq-dev

RUN cd /tmp/g0v-cvg/voter_guide && pip install -r requirements.txt

ADD local_settings.py /tmp/g0v-cvg/voter_guide/local_settings.py

EXPOSE 8000

WORKDIR /tmp/g0v-cvg/voter_guide/

CMD python manage.py runserver 0.0.0.0:8000

