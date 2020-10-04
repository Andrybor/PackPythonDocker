# set base image (host OS)
FROM python:2

# open 5000 port
EXPOSE 5000

# set the working directory in the container
WORKDIR /tmp

# copy the dependencies file to the working directory
COPY app/requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# set the working directory in container
WORKDIR /opt/webapp

# copy the content of the local app directory to the working directory
COPY app/ .

# command to run on container start
CMD [ "python", "./app.py" ]
