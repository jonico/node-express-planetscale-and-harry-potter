#!/bin/bash
export ORG_NAME="jonico"
echo "::set-output name=ORG_NAME::jonico"

export DB_NAME="harry-potter-jonico"
echo "::set-output name=DB_NAME::harry-potter-jonico"

export BRANCH_NAME="remove-magic"
echo "::set-output name=BRANCH_NAME::remove-magic"

export DEPLOY_REQUEST_NUMBER="1"
echo "::set-output name=DEPLOY_REQUEST_NUMBER::1"

export DEPLOY_REQUEST_URL="https://app.planetscale.com/jonico/harry-potter-jonico/deploy-requests/1"
echo "::set-output name=DEPLOY_REQUEST_URL::https://app.planetscale.com/jonico/harry-potter-jonico/deploy-requests/1"

export BRANCH_URL="https://app.planetscale.com/jonico/harry-potter-jonico/remove-magic"
echo "::set-output name=BRANCH_URL::https://app.planetscale.com/jonico/harry-potter-jonico/remove-magic"

