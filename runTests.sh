#!/bin/bash

function finish {
  npm run stop-neo4j
}
trap finish EXIT

npm install
npm run start-neo4j
sleep 2
npm test
