# Deployment Docker of Django, PostgreSQL database, NginX, Gunicorn
This is a [Docker][] setup for deploying your web application based on Django. It also contains tox file for testing your app.

<a href='https://ko-fi.com/Y8Y31LBT4' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://cdn.ko-fi.com/cdn/kofi3.png?v=2' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

## Requirements
You need to install [Docker][] and [Docker-Compose][].

## Production checklist
make sure your django app is configures for production use using this <a href='https://docs.djangoproject.com/en/2.1/howto/deployment/checklist/'>link</a>.

## Build
`docker-compose build` or `make build`.

## Django models in database
`docker-compose run --rm djangoapp /bin/bash -c 'cd hello; ./manage.py makemigrations'`.

## Migrate database
`docker-compose run --rm djangoapp /bin/bash -c 'cd hello; ./manage.py migrate'`.

## Run
`docker-compose up` or `make run`.

## Tests
- `make checksafety`
- `make checkstyle`
- `make test`
- `make coverage`

[Docker]: https://www.docker.com/
[Django]: https://www.djangoproject.com/
[Gunicorn]: http://gunicorn.org/
[NginX]: https://www.nginx.com/
[Postgres]: https://www.postgresql.org/
[Python]: https://www.python.org/
[pipenv]: https://docs.pipenv.org/
[tox]: https://tox.readthedocs.io/en/latest/
[pytest]: https://docs.pytest.org/en/latest/
[safety]: https://pyup.io/safety/
[bandit]: https://github.com/openstack/bandit
[isort]: https://github.com/timothycrosley/isort
[prospector]: https://github.com/landscapeio/prospector
[GitLab]: https://about.gitlab.com/
[Makefile]: https://www.gnu.org/software/make/manual/make.html
[Docker-Compose]: https://docs.docker.com/compose/

## Reference
[Example using Docker, Django, multiple Postgres databases, NginX, Gunicorn, pipenv, GitLab CI and tox][post]

[post]: https://github.com/pawamoy/docker-nginx-postgres-django-example

## License
Software licensed under the [ISC license](/LICENSE).
