FROM python:3.13-alpine
COPY requirements.txt /requirements.txt
RUN apk add --no-cache libressl-dev musl-dev libffi-dev gcc
RUN pip install -r /requirements.txt

COPY yandex_books_downloader.py /bin/yandex_books_downloader.py

WORKDIR /data
ENTRYPOINT [ "python3", "/bin/yandex_books_downloader.py" ]