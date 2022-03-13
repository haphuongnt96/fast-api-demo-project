FROM python:3.9.10-bullseye

WORKDIR /src

COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt

COPY ./sql_app /src/sql_app

CMD ["uvicorn", "sql_app.main:app", "--host", "0.0.0.0", "--port", "5000"]
