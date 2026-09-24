# All users
cat /etc/passwd
getent passwd
cut -d: -f1 /etc/passwd | sort

# Users with login shells (more interesting)
grep -E '/bin/(bash|sh|zsh|fish)$' /etc/passwd
awk -F: '$7 ~ /(\/bash|\/sh|\/zsh)/ {print $1}' /etc/passwd

# Human users (usually UID >= 1000)
awk -F: '$3 >= 1000 {print $1,$3,$6,$7}' /etc/passwd

# Currently logged-in users
who
w
users
last | head -20
lastlog

# Home directories
ls -la /home/
ls -la /root/

# Groups
cat /etc/group
getent group
id
groups

# Sudo / privileged users
grep -E 'sudo|wheel|admin' /etc/group
cat /etc/sudoers 2>/dev/null
ls /etc/sudoers.d/ 2>/dev/null
