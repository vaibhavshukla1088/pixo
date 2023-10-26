#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate

# Run db:seed with error handling
set +e
bundle exec rake db:seed
SEED_EXIT_CODE=$?
set -e

# Check the exit code of the db:seed task
if [ $SEED_EXIT_CODE -eq 0 ]; then
  echo "Seed completed successfully"
else
  echo "Seed encountered an error (Exit Code: $SEED_EXIT_CODE)"
  # Handle any additional actions or logging for the error, if necessary
fi
