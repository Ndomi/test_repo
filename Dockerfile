FROM python:2

WORKDIR /usr/src/app

COPY requirements-test.txt ./
RUN pip install --no-cache-dir -r requirements-test.txt

COPY . .

#CMD [ "python", "./your-daemon-or-script.py" ]
