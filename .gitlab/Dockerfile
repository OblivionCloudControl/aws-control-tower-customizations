FROM python:3.9
RUN apt-get update && apt-get install zip
ADD Pipfile .
ADD Pipfile.lock .
RUN pip install pipenv
RUN pipenv install --system --ignore-pipfile --dev

