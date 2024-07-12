#!/usr/bin/env bash
FILES=$(go list ./...  | grep -v /vendor/)
exec CGO_LDFLAGS="-Wl,-no_warn_duplicate_libraries" go build $FILES
