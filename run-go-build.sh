#!/usr/bin/env bash
FILES=$(go list ./cmd/...  | grep -v /vendor/)
CGO_LDFLAGS="-Wl,-no_warn_duplicate_libraries" exec go build $FILES
