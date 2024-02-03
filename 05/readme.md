##Задание 1
Возьмите код:
из ДЗ к лекции 4,
из демо к лекции 4.
Проверьте код с помощью tflint и checkov. Вам не нужно инициализировать этот проект.
Перечислите, какие типы ошибок обнаружены в проекте (без дублей).
![Илюстация к заданию](https://github.com/chinchanchonTom/devops-netology/blob/terraform-05-hotfix/05/image/step1-1.png)
![Илюстация к заданию](https://github.com/chinchanchonTom/devops-netology/blob/terraform-05-hotfix/05/image/tflint.png)

Ответ. Проект не был инициализирован. Нет установленого провайдера есть неиспользуемые переменные. В модулях присутствует ссылки на ветку мейн без определённого коммита.

##Задание 2
Возьмите ваш GitHub-репозиторий с выполненным ДЗ 4 в ветке 'terraform-04' и сделайте из него ветку 'terraform-05'.
Повторите демонстрацию лекции: настройте YDB, S3 bucket, yandex service account, права доступа и мигрируйте state проекта в S3 с блокировками. Предоставьте скриншоты процесса в качестве ответа.
Закоммитьте в ветку 'terraform-05' все изменения.
Откройте в проекте terraform console, а в другом окне из этой же директории попробуйте запустить terraform apply.
Пришлите ответ об ошибке доступа к state.
Принудительно разблокируйте state. Пришлите команду и вывод.
![Илюстация к заданию](https://github.com/chinchanchonTom/devops-netology/blob/terraform-05-hotfix/05/image/Backet.png)


![Илюстация к заданию](https://github.com/chinchanchonTom/devops-netology/blob/terraform-05-hotfix/05/image/tfstate-lock.png)


![Илюстация к заданию](https://github.com/chinchanchonTom/devops-netology/blob/terraform-05-hotfix/05/image/lock%20id.png)




![Илюстация к заданию]()
##Задание 3
Сделайте в GitHub из ветки 'terraform-05' новую ветку 'terraform-hotfix'.
Проверье код с помощью tflint и checkov, исправьте все предупреждения и ошибки в 'terraform-hotfix', сделайте коммит.
Откройте новый pull request 'terraform-hotfix' --> 'terraform-05'.
Вставьте в комментарий PR результат анализа tflint и checkov, план изменений инфраструктуры из вывода команды terraform plan.
Пришлите ссылку на PR для ревью. Вливать код в 'terraform-05' не нужно.

https://github.com/chinchanchonTom/devops-netology/pull/1



##Задание 4
Напишите переменные с валидацией и протестируйте их, заполнив default верными и неверными значениями. Предоставьте скриншоты проверок из terraform console.
type=string, description="ip-адрес" — проверка, что значение переменной содержит верный IP-адрес с помощью функций cidrhost() или regex(). Тесты: "192.168.0.1" и "1920.1680.0.1";
type=list(string), description="список ip-адресов" — проверка, что все адреса верны. Тесты: ["192.168.0.1", "1.1.1.1", "127.0.0.1"] и ["192.168.0.1", "1.1.1.1", "1270.0.0.1"].


https://github.com/chinchanchonTom/devops-netology/tree/terraform-05-hotfix/05/step%204

