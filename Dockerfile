FROM python:stretch

# copy local files to container 
COPY . /app
WORKDIR /app

# TODO: Add comments here
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]