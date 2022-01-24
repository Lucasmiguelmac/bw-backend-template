FROM python:3-slim AS development_build

ARG DJANGO_ENV

ENV DJANGO_ENV=${DJANGO_ENV} \
  # python:
  PYTHONFAULTHANDLER=1 \
  PYTHONUNBUFFERED=1 \
  PYTHONHASHSEED=random \
  # pip:
  PIP_NO_CACHE_DIR=off \
  PIP_DISABLE_PIP_VERSION_CHECK=on \
  PIP_DEFAULT_TIMEOUT=100 \
  # poetry:
  POETRY_VERSION=1.0.5 \
  POETRY_VIRTUALENVS_CREATE=false \
  POETRY_CACHE_DIR='/var/cache/pypoetry'


RUN mkdir /app && pip install "poetry==$POETRY_VERSION" && poetry --version
RUN apt-get update -y && apt-get install -y git
WORKDIR /app

COPY pyproject.toml poetry.lock /app/
RUN poetry install


COPY . .