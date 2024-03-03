#!/bin/bash
set -euxo pipefail

poetry run isort Trying4/ tests/
poetry run black Trying4/ tests/
