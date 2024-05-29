FROM python:3.11.2

WORKDIR code/

COPY ./requirements.txt /code/requirements.txt


RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt


COPY ./ /code/

#VOLUME ["/code"]

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]

#CMD ["uvicorn", "main:app", "--host", "192.168.0.188", "--port", "80"]





