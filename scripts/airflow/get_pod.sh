#!/usr/bin/env bash

kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}' | grep $1 | head -1