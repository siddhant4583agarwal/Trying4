#!/bin/bash
set -euxo pipefail

poetry run cruft check
poetry run safety check -i 39462 -i 40291
poetry run bandit -c pyproject.toml -r Trying4/
poetry run isort --check --diff Trying4/ tests/
poetry run black --check Trying4/ tests/
poetry run flake8 Trying4/ tests/
poetry run mypy \
           --install-types \
           --non-interactive \
           Trying4/
#  https://mypy.readthedocs.io/en/stable/running_mypy.html#library-stubs-not-installed
