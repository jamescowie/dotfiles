#!/bin/zsh

COLOR_RED="\x1B[31m"

EXIT_CODE=0

repo=$( git rev-parse --show-toplevel )
hook_type=$( basename $0 )
hooks=~/git/hooks

#echo "Executing $hook_type hook(s)"

for hook in $hooks/*.$hook_type; do
#	echo ""
#	echo "${COLOR_RED}Executing ${hook}${COLOR_NONE}"
	${hook}
	EXIT_CODE=$((${EXIT_CODE} + $?))
done

if [[ ${EXIT_CODE} -ne 0 ]]; then
#	echo ""
	echo "${COLOR_RED}Commit Failed.${COLOR_NONE}"
fi

exit $((${EXIT_CODE}))
