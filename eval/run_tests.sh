#!/bin/bash

echo "Running dummy test script..."
if [ "$TEST_SECRET" == "1234" ]; then
    echo "✅ TEST_SECRET is correct!"
else
    echo "❌ TEST_SECRET is incorrect or missing."
    echo "Received: '${TEST_SECRET:-<unset>}'"
    exit 1  # optional: fail the job if the secret is wrong
fi