#!/bin/bash

UART_GROUP_ID=${UART_GROUP_ID:-20}
if ! grep -q "x:${UART_GROUP_ID}:" /etc/group; then
  groupadd -g "$UART_GROUP_ID" uart
fi
UART_GROUP=$(grep -Po "^\\w+(?=:x:${UART_GROUP_ID}:)" /etc/group)

if [[ -n "$USER_ID" ]]; then
  useradd -m -s /bin/bash -u "$USER_ID" -o -d /home/user user
  usermod -aG sudo user
  usermod -aG "$UART_GROUP" user
  chown user $(tty)
  echo 'source /tools/Xilinx/Vivado/2020.1/settings64.sh' > /home/user/.bash_profile
  chown user:user -R /home/user/
  exec /usr/local/bin/gosu user "$@"
else
  exec "$@"
fi
