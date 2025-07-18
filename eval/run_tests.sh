#!/bin/bash

TEST_SECRET_cmd=$1
echo $TEST_SECRET_cmd
echo "Running dummy test script..."
if [ "$TEST_SECRET_cmd" == "1234" ]; then
    echo "✅ TEST_SECRET is correct!"
else
    echo "❌ TEST_SECRET is incorrect or missing."
    echo "Received: '${TEST_SECRET_cmd:-<unset>}'"
    exit 1  # optional: fail the job if the secret is wrong
fi
