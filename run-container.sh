#!/bin/bash

docker run -e USER="oizone" -e RUNNER_NAME="testorioni" -e TOKEN="ec13a5ce1d0ca8e9562c57b2c4d47dcbfbb205a6" -e REPO="oizone/vm-imager-win" -e RUNNER_LABELS="test,jospos"  oizone/github-actions-runner /bin/bash
