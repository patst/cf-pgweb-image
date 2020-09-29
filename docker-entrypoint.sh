#!/bin/sh

./pgweb_linux_386 --url "$DATABASE_URL" --bind 0.0.0.0 --listen "$PORT"
