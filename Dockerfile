FROM python:3.7

RUN pip install --upgrade pip
RUN pip install fastapi uvicorn

EXPOSE 8081

COPY ./app/main.py ./

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8081"]
