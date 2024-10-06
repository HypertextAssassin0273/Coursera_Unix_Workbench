echo '#!/usr/bin/env bash' > short # add 'shebang' for portability
echo 'echo "a small program"' >> short # append the program code

chmod u+x short # make the file executable (if it's not already)

# chmod [mode] [file]

# normal mode: [operation][permission][owner]
# owner: u = user, g = group, o = other, a = all
# permission: r = read, w = write, x = execute
# operation: + = add, - = remove, = set

# octal mode: [owner][group][other]
# 0 = no permission
# 1 = execute
# 2 = write
# 3 = write and execute
# 4 = read
# 5 = read and execute
# 6 = read and write
# 7 = read, write, and execute

