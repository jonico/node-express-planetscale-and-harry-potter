#!/bin/bash
export ORG_NAME="jonico"
echo "::set-output name=ORG_NAME::jonico"

export DB_NAME="harry-potter-jonico"
echo "::set-output name=DB_NAME::harry-potter-jonico"

export BRANCH_NAME="no-gender"
echo "::set-output name=BRANCH_NAME::no-gender"

export DEPLOY_REQUEST_NUMBER="3"
echo "::set-output name=DEPLOY_REQUEST_NUMBER::3"

export DEPLOY_REQUEST_URL="https://app.planetscale.com/jonico/harry-potter-jonico/deploy-requests/3"
echo "::set-output name=DEPLOY_REQUEST_URL::https://app.planetscale.com/jonico/harry-potter-jonico/deploy-requests/3"

export BRANCH_URL="https://app.planetscale.com/jonico/harry-potter-jonico/no-gender"
echo "::set-output name=BRANCH_URL::https://app.planetscale.com/jonico/harry-potter-jonico/no-gender"

