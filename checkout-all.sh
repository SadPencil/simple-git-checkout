#!/usr/env/bin bash
set -e

output_dir="/tmp/my_output"
for commit in `git log --format="format:%H"`; do
	dir="$output_dir/$commit/"
	mkdir -p "$dir";
	git archive --format=tar $commit | tar -xf - -C "$dir";
done
