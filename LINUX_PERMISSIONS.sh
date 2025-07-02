#!/bin/zsh

# Relations between octal to binary
# Each single digit in octal represents 3 bits

0 = 000
1 = 001
2 = 010
3 = 011
4 = 100
5 = 101
6 = 110
7 = 111

chmod 740 /some/file.sh
# 7 = permissions to owner (user)
# 4 = permissions to group 
# 0 = permissions to world (other, everyone)
740 = 111 100 000 = rwxr----- 
# owner has read + write + execute permissions
# group has read permissions
# other has no permissions

chmod o-wx /some/file.sh
# The result of this notation depends on the current state of the permissions.
# In this case, this revokes the write and execute permissions to "other"