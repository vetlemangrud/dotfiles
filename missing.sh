#!/bin/bash
# Print commands listed in each module's `inventory` file that are not installed.
# No output means everything is installed.
#
# usage: ./missing.sh [module...]   (defaults to all modules)

cd "$(dirname "$0")" || exit 1

modules=("$@")
if [ ${#modules[@]} -eq 0 ]; then
    modules=(*/)
fi

for module in "${modules[@]}"; do
    inventory="${module%/}/inventory"
    [ -f "$inventory" ] || continue

    while read -r cmd _; do
        # skip blank lines and comments
        [[ -z "$cmd" || "$cmd" == \#* ]] && continue
        command -v "$cmd" >/dev/null 2>&1 || echo "${module%/}: $cmd"
    done < "$inventory"
done
