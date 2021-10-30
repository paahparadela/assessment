#/bin/bash
> assessment.txt

echo "===================================================" >> assessment.txt
echo "========Informacoes do sistema operacional: (( $(hostname -i) ))" >> assessment.txt
echo "===================================================" >> assessment.txt
cat /etc/*-release >> assessment.txt

echo "===================================================" >> assessment.txt
echo "========Usuarios presentes no servidor: (( $(hostname -i) ))" >> assessment.txt
echo "===================================================" >> assessment.txt
cat /etc/passwd | cut -d: -f1 >> assessment.txt

echo "===================================================" >> assessment.txt
echo "========Pacotes instalados no servidor: (( $(hostname -i) ))" >> assessment.txt
echo "===================================================" >> assessment.txt
if [ $DISTRO == "Debian" ]
then
  dpkg -l >> assessment.txt
else
  rpm -qa >> assessment.txt
fi
echo "===================================================" >> assessment.txt
echo "========Versao do kernel do servidor: (( $(hostname -i) ))" >> assessment.txt
echo "===================================================" >> assessment.txt
uname -a >> assessment.txt
