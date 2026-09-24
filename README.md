# Linux-Health-Service

Script em Bash para diagnóstico rápido de um sistema Linux — coleta uso de CPU, memória, disco, status de serviços (SSH, Cron, Nginx) e conectividade de rede, tudo num único comando.

## Por quê
Feito pra praticar shell scripting e comandos básicos de monitoramento/sysadmin (systemctl, awk, df, free) primeiro projeto do meu portfólio de estudos em Linux.

## Como usar
```bash
git clone https://github.com/wund-coder/Linux-Health-Service/blob/main/Linux_Health_Service.sh
cd linux-health-service
chmod +x Linux_Health_Service.sh
./Linux_Health_Service.sh
```

## Saída de exemplo

```
===========Linux Health Service===========
Usuário: Fulano
Data e Hora: Thu Sep 24 14:37:02 -03 2026
Tempo de Atividade: up 3 hours, 12 minutes
Versão do Kernel: 6.5.0-45-generic
-------------SISTEMA-------------
Uso de CPU: 7.3%
Disco: /: 42%
/boot: 18%
Uso de Memória: 61%
-------------SERVIÇOS-------------
SSH: active
Cron: active
Nginx: active
---------------REDE---------------
Internet: Conectado
DNS: nameserver 8.8.8.8
nameserver 1.1.1.1
===========Linux Health Check Completed===========
```

## O que o script verifica
- **Sistema**: uptime, kernel, uso de CPU, memória e disco
- **Serviços**: status do SSH, Cron e Nginx via systemctl
- **Rede**: conectividade com a internet (ping) e configuração de DNS

## Tecnologias
Bash, awk, systemctl

## Limitações conhecidas
- Assume que os serviços SSH/Cron/Nginx estão instalados (retorna erro se algum não existir na máquina)
- Testado em Ubuntu 22.04 
