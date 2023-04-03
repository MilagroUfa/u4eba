# Local .terraform directories
**/.terraform/*
- будет игнорироваться содержимое локальной скрытой директории .terraform

# .tfstate files
*.tfstate
*.tfstate.*
- будут игнорироваться в этой директори все файлы с расширением .tfstate и все файлы подподающие под маску любоеколличествосимволов.tfstate.любоеколличествосимволов

# Crash log files
crash.log
- игнорирование файла логов, crash.log

# Exclude all .tfvars files, which are likely to contain sentitive data, such as
# password, private keys, and other secrets. These should not be part of version
# control as they are data points which are potentially sensitive and subject
# to change depending on the environment.
#
*.tfvars
- будут игнорироваться файлы с расширением .tfvars

# Ignore override files as they are usually used to override resources locally and so
# are not checked in
override.tf
override.tf.json
*_override.tf
*_override.tf.json
- игнорирование файлов override.tf, override.tf.json, а так же любых файлов имеющих окончание _override.tf и _override.tf.json 

# Include override files you do wish to add to version control using negated pattern
#
# !example_override.tf

# Include tfplan files to ignore the plan output of command: terraform plan -out=tfplan
# example: *tfplan*

# Ignore CLI configuration files
.terraformrc
terraform.rc
/key.json
- будут игнорированы в этой директории файлы terraform.rc, key.json и .terraformrc