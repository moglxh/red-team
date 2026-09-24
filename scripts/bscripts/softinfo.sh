# Package lists (choose according to distro)
dpkg -l                          # Debian/Ubuntu – full list
dpkg -l | wc -l                  # how many packages
rpm -qa                          # RHEL/CentOS/Fedora
pacman -Q                        # Arch
apk list                         # Alpine

# Interesting / high-value packages
dpkg -l | grep -E 'apache|nginx|php|python|node|java|docker|git|ffmpeg|libreoffice|mysql|postgres'
rpm -qa | grep -E 'httpd|nginx|php|python|nodejs|java|docker|git'

# Common development & runtime tools
which python python3 node npm java gcc g++ make git curl wget docker php ruby go rustc 2>/dev/null
python3 --version
node --version
java -version 2>&1 | head -1
gcc --version | head -1
git --version
docker --version 2>/dev/null

# Web servers & services
apache2ctl -v 2>/dev/null || httpd -v 2>/dev/null
nginx -v 2>/dev/null
systemctl list-units --type=service --state=running

# Installed binaries overview
ls /usr/bin/ | wc -l
ls /usr/local/bin/
