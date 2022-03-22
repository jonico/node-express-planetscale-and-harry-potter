#!/bin/bash
export ORG_NAME="planetscale-demo"
echo "::set-output name=ORG_NAME::planetscale-demo"

export DB_NAME="harry-potter-jonico"
echo "::set-output name=DB_NAME::harry-potter-jonico"

export BRANCH_NAME="remove-magic"
echo "::set-output name=BRANCH_NAME::remove-magic"

export DEPLOY_REQUEST_NUMBER="4"
echo "::set-output name=DEPLOY_REQUEST_NUMBER::4"

export DEPLOY_REQUEST_URL="https://app.planetscale.com/planetscale-demo/harry-potter-jonico/deploy-requests/4"
echo "::set-output name=DEPLOY_REQUEST_URL::https://app.planetscale.com/planetscale-demo/harry-potter-jonico/deploy-requests/4"

export BRANCH_URL="https://app.planetscale.com/planetscale-demo/harry-potter-jonico/remove-magic"
echo "::set-output name=BRANCH_URL::https://app.planetscale.com/planetscale-demo/harry-potter-jonico/remove-magic"

