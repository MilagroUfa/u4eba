### Домашнее задание к занятию "5.2. Применение принципов IaaC в работе с виртуальными машинами"

#### Задача 1

- Опишите своими словами основные преимущества применения на практике IaaC паттернов.
```
- Скорость конфигурирования, как следствие - уменьшение затрат.
- С помощью IaaC  развертывание повторяемы и позволяет избежать проблем во время выполнения, аз-за  дрейфа конфигурации.
- IaaC стандартизирует установку инфраструктуры.
- Эффективный способ повторного развертывания инфраструктуры после 'всяческих коллапсов'.
- За все отвечает код, службы, конфигурация и параметры каждый раз будут развертываться одинаково. Т.к. код можно версионировать, 
IaaC позволяет регистрировать и отслеживать каждое изменение конфигурации вашего сервера.
```
- Какой из принципов IaaC является основополагающим?
```
Идемпотентность - свойство объекта или операции при повторном применении операции к объекту давать тот же результат,
что и при первом.
```

#### Задача 2

- Чем Ansible выгодно отличается от других систем управление конфигурациями?
```
- Позволяет реализовать принцип идемпотентности в управлении состояниями хостов.
- Быстро осваивается, достаточно поверхностного понимания синтаксиса YAML, сниженный порог входа.
- Нет гадобности в агенте на клиентах, для доступа используется ssh.
- Большое колличество модулей и подробная документация.
```
- Какой, на ваш взгляд, метод работы систем конфигурации более надёжный push или pull?
```
 Все засисит от метода. Инструментарий есть под обе системы. 
Тот же Chef, Puppet, используют pull, а Terraform, Ansible - push, а SaltStack - push/pull.
По моему мнению push надёжней, т.к. централизованно управляет конфигурацией и исключает ситуации, когда прямое изменеие
на сервере не отразится в репозитории, что может привести к непредсказуемым ситуациям. 
Надежность метода работы скорее зависит от 'исходников', того же репозитория git. Внося изменения в код можно разворачивать все что угодно
и будет уже не важно pull или push методом. Тем самым напрашивается ответ, что нужно защищать git-репозиторий.
```

#### Задача 3

Установить на личный компьютер:

- VirtualBox
- Vagrant
- Ansible

*Приложить вывод команд установленных версий каждой из программ, оформленный в markdown.*

```
root@testvm:/home/user/vagrant# VBoxManage -v
6.1.38_Ubuntur153438
```
```
root@testvm:/home/user/vagrant# vagrant -v
Vagrant 2.3.7
```
```
root@testvm:/home/user/vagrant# ansible --version
ansible 2.10.8
  config file = /home/user/vagrant/ansible.cfg
  configured module search path = ['/root/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 3.10.6 (main, May 29 2023, 11:10:38) [GCC 11.3.0]
```

#### Задача 4 (*)

Воспроизвести практическую часть лекции самостоятельно.

- Создать виртуальную машину.
- Зайти внутрь ВМ, убедиться, что Docker установлен с помощью команды
```
docker ps
```

```
root@testvm:/home/user/vagrant# vagrant up
Bringing machine 'server1.netology' up with 'virtualbox' provider...
==> server1.netology: Importing base box 'bento/ubuntu-20.04'...
==> server1.netology: Matching MAC address for NAT networking...
==> server1.netology: Setting the name of the VM: server1.netology
==> server1.netology: Clearing any previously set network interfaces...
==> server1.netology: Preparing network interfaces based on configuration...
    server1.netology: Adapter 1: nat
    server1.netology: Adapter 2: hostonly
==> server1.netology: Forwarding ports...
    server1.netology: 22 (guest) => 20011 (host) (adapter 1)
    server1.netology: 22 (guest) => 2222 (host) (adapter 1)
==> server1.netology: Running 'pre-boot' VM customizations...
==> server1.netology: Booting VM...
==> server1.netology: Waiting for machine to boot. This may take a few minutes...
    server1.netology: SSH address: 127.0.0.1:2222
    server1.netology: SSH username: vagrant
    server1.netology: SSH auth method: private key
    server1.netology: Warning: Connection reset. Retrying...
    server1.netology:
    server1.netology: Vagrant insecure key detected. Vagrant will automatically replace
    server1.netology: this with a newly generated keypair for better security.
    server1.netology:
    server1.netology: Inserting generated public key within guest...
    server1.netology: Removing insecure key from the guest if it's present...
    server1.netology: Key inserted! Disconnecting and reconnecting using new SSH key...
==> server1.netology: Machine booted and ready!
==> server1.netology: Checking for guest additions in VM...
    server1.netology: The guest additions on this VM do not match the installed version of
    server1.netology: VirtualBox! In most cases this is fine, but in rare cases it can
    server1.netology: prevent things such as shared folders from working properly. If you see
    server1.netology: shared folder errors, please make sure the guest additions within the
    server1.netology: virtual machine match the version of VirtualBox you have installed on
    server1.netology: your host and reload your VM.
    server1.netology:
    server1.netology: Guest Additions Version: 7.0.6 r155176
    server1.netology: VirtualBox Version: 6.1
==> server1.netology: Setting hostname...
==> server1.netology: Configuring and enabling network interfaces...
==> server1.netology: Mounting shared folders...
    server1.netology: /vagrant => /home/user/vagrant
==> server1.netology: Running provisioner: ansible...
    server1.netology: Running ansible-playbook...

PLAY [Playbook] ****************************************************************

TASK [Gathering Facts] *********************************************************
ok: [server1.netology]

TASK [Installing tools] ********************************************************
ok: [server1.netology] => (item=['git', 'curl'])

TASK [Installing docker] *******************************************************
changed: [server1.netology]

TASK [Add the current user to docker group] ************************************
changed: [server1.netology]

PLAY RECAP *********************************************************************
server1.netology           : ok=4    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

root@testvm:/home/user/vagrant# vagrant ssh
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.4.0-144-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

 System information disabled due to load higher than 1.0

 * Introducing Expanded Security Maintenance for Applications.
   Receive updates to over 25,000 software packages with your
   Ubuntu Pro subscription. Free for personal use.

     https://ubuntu.com/pro


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento
Last login: Tue Jul 25 18:53:59 2023 from 10.0.2.2
vagrant@server1:~$ sudo bash
root@server1:/home/vagrant# docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
root@server1:/home/vagrant#
```