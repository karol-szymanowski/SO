# SO
School projects

## How to start
Run this commands in your terminal
```bash
# Run this commands as a root user
wget https://raw.githubusercontent.com/tetrash/SO/master/init.sh -P /tmp && \
chmod +x /tmp/init.sh && \
/tmp/init.sh
```

## Scripts

- [screenshot](###screenshot)
- [uploadToFtp](###uploadToFtp)

### screenshot
Take screenshot

```bash
./scripts/screenshot.sh <filename>
```

### uploadToFtp
upload file to frp server

```bash
# required variables:
# FTP_USER
# FTP_PASSWORD
# FTP_HOST
# FTP_DIRECTORY

./scripts/uploadToFtp.sh <filename>
```

## Install scripts

- [lftp](###lftp)
- [net-tools](###net-tools)
- [sudo](###sudo)

### lftp
Install lftp (required to upload files to ftp servers)

```bash
./scripts/lftp.sh
```

### net-tools
Install net-tools (ifconfig)

```bash
./scripts/net-tools.sh
```

### sudo
install & configure sudo

```bash
./scripts/sudo.sh
```
