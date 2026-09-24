#!/bin/bash
# Linux Health Service
echo "===========Linux Health Service==========="
echo "Usuário: $(whoami)"
echo "Data e Hora: $(date)"
echo "Tempo de Atividade: $(uptime -p)"
echo "Versão do Kernel: $(uname -r)"

echo "-------------SISTEMA-------------"
echo "Uso de CPU: $(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')%" ###Awk sem formatação
echo "Disco: $(df -h | awk '$1 ~ /^\/dev\// {print $6 ": " $5}')"
echo "Uso de Memória: $(free -m | awk '/Mem:/ {printf "%.0f%%", ($2-$7)/$2*100}')" ###Awk formatado

echo "-------------SERVIÇOS-------------"
echo "SSH: $(systemctl is-active sshd)"
echo "Cron: $(systemctl is-active cron)"
echo "Nginx: $(systemctl is-active nginx)"

echo "---------------REDE---------------"
echo "Internet: $(ping -c 1 google.com > /dev/null 2>&1 && echo "Conectado" || echo "Desconectado")"
echo "DNS: $(cat /etc/resolv.conf | grep nameserver)"

echo "===========Linux Health Check Completed.==========="