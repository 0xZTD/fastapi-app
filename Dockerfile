FROM python:latest

WORKDIR /usr/src/app

COPY requirements.txt .

RUN python -m pip install -r requirements.txt

COPY . .

ENTRYPOINT [ "/bin/bash","-c" ]

EXPOSE 8000

CMD [ "fastapi run main.py" ]