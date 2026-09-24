echo "=== OS ===" && cat /etc/os-release && uname -a && hostnamectl
echo "=== Users ===" && cut -d: -f1 /etc/passwd | sort && ls /home/
echo "=== Logged in ===" && who && w
echo "=== Databases ===" && ss -tlnp | grep -E '3306|5432|27017|6379' ; systemctl list-units --type=service | grep -E 'mysql|mariadb|postgres|mongo|redis'
echo "=== Key Software ===" && which python3 node java gcc git docker 2>/dev/null ; python3 --version ; node --version 2>/dev/null
echo "=== Running Services ===" && systemctl list-units --type=service --state=running --no-pager | head -30
echo "=== Listening Ports ===" && ss -tlnp
