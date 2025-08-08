#!/bin/bash

# 1] LOGIN SHELL ($SHELL == /bin/zsh)
# 2] CURRENT SHELL FILE ($0 == ./13_SHELL_THEORY.sh)
# 3] SHEBANG INTERPRETER (#!/bin/ksh, accesed via:)
	ps -p $$ -o comm=

# $SHELL is an environment variable INHERITED from the process that started your script

# On macOS, your login shell is /bin/zsh by default, so. $SHELL == '/bin/zsh' regardless of
# which shell the script actually runs in (unless you explicitly change it inside the script)

# The SHEBANG (#!/bin/bash) only controls which interpreter executes your script,
# Not the value of ${SHELL}
 
# When you run: ./my-script.sh, the OS sees "#!/bin/bash" and launches /bin/bash
# to interpret the file

echo "The env variable SHELL = ${SHELL}" # /bin/zsh 
echo "This script is running in: $0" # ./13_SHELL_THEORY.sh
echo "Process reports shell as: $(ps -p $$ -o comm=)" # /bin/bash 
# $$ = Process ID
