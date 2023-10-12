#!/bin/bash

PROJECT_REGISTRATION_TOKEN='du78GyYPia6Vuw83Te8r'

gitlab-runner register \
  --non-interactive \
  --url "https://repos.21-school.ru" \
  --registration-token "$PROJECT_REGISTRATION_TOKEN" \
  --executor "shell" \
  --shell "bash" \
  --description "test" \
  --maintenance-note "Free-form maintainer notes about this runner" \
  --tag-list "" \
  --run-untagged="true" \
  --locked="false" \
  --access-level="not_protected"

systemctl restart gitlab-runner.service
systemctl enable gitlab-runner.service

