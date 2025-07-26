#!/bin/bash

# Copyright 2024 Kersten Henrik Breuer
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

PYPROJECT_TOML="${HERE}/../pyproject.toml"
DEV_REQUIREMENTS="${HERE}/../requirements-dev.in"
LOCK_FILE="${HERE}/../requirements.lock.txt"

pip-compile \
    --output-file "${LOCK_FILE}" \
    --generate-hashes \
    --upgrade \
    "${PYPROJECT_TOML}" \
    "${DEV_REQUIREMENTS}"
