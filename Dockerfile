FROM python:2

WORKDIR /usr/src/app

COPY requirements-test.txt ./
RUN pip install --no-cache-dir -r requirements-test.txt

COPY run_test.sh ./

RUN ./run_test.sh

COPY . .
