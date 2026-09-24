# Basic OS identification
cat /etc/os-release
hostnamectl
uname -a
lsb_release -a 2>/dev/null

# Hostname & domain
hostname
hostname -f
hostname -I          # IP addresses

# Kernel & architecture
uname -r
uname -m
arch

# Hardware overview
lscpu
lshw -short 2>/dev/null
dmidecode -t system 2>/dev/null
cat /proc/cpuinfo | head -30
free -h
df -h
lsblk

# Uptime & load
uptime
cat /proc/loadavg
w
who -b                 # last boot time

# Virtualization / container check
systemd-detect-virt 2>/dev/null
cat /proc/1/cgroup
ls -la /.dockerenv 2>/dev/null
