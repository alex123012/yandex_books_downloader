# Yandex Books Downloader

Downloads books from <https://books.yandex.ru> and saves them as epub format files.

## You need to be subscribed to [Yandex Plus](https://plus.yandex.ru/) OR download books that are available for free

Works on Mac OS X, Linux.
For Windows 10 you'll need to install WSL (Windows subsystem for linux) aka Windows Ubuntu.
For linux sometimes `pycookiecheat` isn't working - [solution](https://stackoverflow.com/questions/71369726/no-module-named-gi)

Steps:

1. Buy the subscription at [plus.yandex.ru](https://plus.yandex.ru/)
2. Authorize at [books.yandex.ru](https://books.yandex.ru) with your chrome browser
3. install python3
4. Copy the bookid (open the book at [books.yandex.ru](https://books.yandex.ru) and check the url)
5. `python3 yandex_books_downloader.py --bookid <BookIdHere>`
6. The epub will be downloaded to "out"

## Installation details

```bash
sudo apt update
sudo apt install -y python3-pip
git clone https://github.com/alex123012/yandex_books_downloader
cd yandex_books_downloader
pip install -r requirements.txt
python3 yandex_books_downloader.py --bookid KFHDG3bp
```

## Docker Usage (Alternative "installation")

```bash
git clone https://github.com/alex123012/yandex_books_downloader.git
cd yandex_books_downloader
docker build -t ya_books_dl .
docker run -it --mount type=bind,source=$(pwd),target=/mnt/data ya_books_dl --bookid KFHDG3bp --log DEBUG --outdir /mnt/data
```

## From Windows

1. Install & Run [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

2. ```bash
    cd /mnt/c/users/myusername
    git clone https://www.github.com/alex123012/yandex_books_downloader
    cd yandex_books_downloader
    sudo apt-get update
    sudo apt install -y python3-pip
    pip3 install -r src/python3/requirements.txt
    python3 src/python3/yandex_books_downloader.py --bookid KFHDG3bp
3. After completion, you will find your book at your home folder at yandex_books_downloader/out

You will be asked for 'Session_id cookie', in order to get it:

1. Go to your browser
2. log in to [books.yandex.ru](https://books.yandex.ru)
3. Open developer'console (F12)
4. Click Application
5. Click `Cookies` on the left
6. Find `Session_id` on the right
7. Copy the value
