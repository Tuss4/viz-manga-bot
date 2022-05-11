FROM python:3-alpine

WORKDIR /usr/src/app


COPY requirements.txt ./
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
RUN ls

CMD [ "python", "-u", "main,py"]
