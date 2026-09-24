# Check if common database packages are installed
dpkg -l | grep -E 'mysql|mariadb|postgres|mongo|redis|sqlite|mariadb'     # Debian/Ubuntu
rpm -qa | grep -E 'mysql|mariadb|postgres|mongo|redis'                   # RHEL/CentOS/Fedora
pacman -Q | grep -E 'mysql|mariadb|postgres|mongo|redis'                 # Arch

# Running database processes
ps aux | grep -E 'mysql|mariadb|postgres|mongod|redis|sqlite' | grep -v grep
pgrep -a mysql
pgrep -a postgres
pgrep -a mongod
pgrep -a redis

# Listening ports (databases usually listen on well-known ports)
ss -tlnp
ss -tlnp | grep -E '3306|5432|27017|6379|11211'
netstat -tlnp 2>/dev/null | grep -E '3306|5432|27017|6379'

# Service status
systemctl list-units --type=service | grep -E 'mysql|mariadb|postgres|mongo|redis'
systemctl status mysql mariadb postgresql mongod redis 2>/dev/null

# Data directories (common locations)
ls -la /var/lib/mysql /var/lib/postgresql /var/lib/mongodb /var/lib/redis 2>/dev/null
ls /var/lib/ | grep -E 'mysql|postgres|mongo|redis'

# Quick connection tests (if clients are installed)
mysql -V 2>/dev/null
psql --version 2>/dev/null
mongosh --version 2>/dev/null || mongo --version 2>/dev/null
redis-cli --version 2>/dev/null
sqlite3 --version 2>/dev/null
