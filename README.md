тестовая запись в репозиторий для нетологии.



#  Исключает загрузку всех файлов с расширение .terraform
#  **/.terraform/*

# Исключает загрузку зайлов с расширением 
# *.tfstate
# *.tfstate.*

# Исключает загрузку с расширение crash.log
# crash.log
# crash.*.log

# мгнорирует все файлы с расширение .tfvars там хранятся пароли и приватные ключи.
# *.tfvars
# *.tfvars.json

# игнорирует перезапись файлов локального перераспределения ресурса
# override.tf
# override.tf.json
# *_override.tf
# *_override.tf.json

# Игнорирует CLI конфигурационных файлов 
# .terraformrc
# terraform.rc
