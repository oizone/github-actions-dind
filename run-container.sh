#!/bin/bash

exit_loop() {
    docker stop oizone/github-actions-runner
    exit
}


trap exit_loop SIGINT SIGQUIT SIGTERM

while true; do
    docker run -i --rm USER="${USER}" -e RUNNER_NAME="${RUNNER_NAME}" -e TOKEN="${TOKEN}" -e REPO="${REPO}" -e RUNNER_LABELS="${RUNNER_LABELS}"  oizone/github-actions-runner 
done

