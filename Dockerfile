# Base Image
FROM node:latest
#FROM python:3.10-alpine

# Setup working directory in container
WORKDIR /project

# Copy dependencies to our working directory
#COPY localmachine container
COPY package.json ./package.json
COPY package-lock.json ./package-lock.json
# COPY requirements.txt ./requirements.txt

# Install the dependencies
RUN npm install 
# RUN pip install -r requirements.txt

# Copy the rest of the project files
COPY . .

# python manage.py runserver ==>8000
EXPOSE 3000

# CMD ["python", "manage.py", "runserver"]
CMD [ "npm", "start" ]