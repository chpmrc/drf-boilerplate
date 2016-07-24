# drf-boilerplate

This is a cookiecutter template that creates a Django/DRF, PostgreSQL-based project with the following features:

- [cookiecutter-django](https://github.com/pydanny/cookiecutter-django) structure
- Basic authentication endpoints from [django-allauth](https://github.com/pennersr/django-allauth)
- Interactive docs with [django-rest-swagger](https://github.com/marcgibbons/django-rest-swagger)
- A sample `users` Django app to get started

And **that's it**. This template is only concerned about building APIs, nothing more.

# Preparation

Make sure there is a `.env` file in the project's root that initializes all the sensible environment variables.

A list of such variables is the following:

- DJANGO_SECRET_KEY
- POSTGRES_DB
- POSTGRES_USER
- POSTGRES_PASSWORD

# Start developing

The most convenient way to start a local development environment is Docker (production setup coming soon).

There is a single command to start the whole docker-compose environment:

`cd ${PROJECT_ROOT} && source tools/dev.sh`

This assumes the `.env` file has been sourced (i.e. your environment variables are correctly set).

# TODO

- Simplify `requirements.txt`
- Add Docker deployment scripts for production