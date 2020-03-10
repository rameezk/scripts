#!/usr/bin/env bash

for workflow in ./workflow/*; do
    workflow_name=$(basename "$workflow")
    if ! ag -c --hidden "$workflow_name" > /dev/null; then
        echo "safe to remove workflow [$workflow_name]"
        echo "deleting"
        rm "$workflow"
    fi
done
