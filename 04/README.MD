##Задание 1
Возьмите из демонстрации к лекции готовый код для создания с помощью двух вызовов remote-модуля -> двух ВМ, относящихся к разным проектам(marketing и analytics) используйте labels для обозначения принадлежности. В файле cloud-init.yml необходимо использовать переменную для ssh-ключа вместо хардкода. Передайте ssh-ключ в функцию template_file в блоке vars ={} . Воспользуйтесь примером. Обратите внимание, что ssh-authorized-keys принимает в себя список, а не строку.
Добавьте в файл cloud-init.yml установку nginx.
Предоставьте скриншот подключения к консоли и вывод команды sudo nginx -t, скриншот консоли ВМ yandex cloud с их метками. Откройте terraform console и предоставьте скриншот содержимого модуля. Пример: > module.marketing_vm
##Решение
![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/labels.png)

![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/labels-2.png)

![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/step1_2-2.png)


![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/step1_2-1.png)


![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/step1_3.png)


![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/console.png)



##Задание 2
Напишите локальный модуль vpc, который будет создавать 2 ресурса: одну сеть и одну подсеть в зоне, объявленной при вызове модуля, например: ru-central1-a.
Вы должны передать в модуль переменные с названием сети, zone и v4_cidr_blocks.
Модуль должен возвращать в root module с помощью output информацию о yandex_vpc_subnet. Пришлите скриншот информации из terraform console о своем модуле. Пример: > module.vpc_dev
Замените ресурсы yandex_vpc_network и yandex_vpc_subnet созданным модулем. Не забудьте передать необходимые параметры сети из модуля vpc в модуль с виртуальной машиной.
Сгенерируйте документацию к модулю с помощью terraform-docs.
##Решение


![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/step2_console.png)





Задание 3
Выведите список ресурсов в стейте.
Полностью удалите из стейта модуль vpc.
Полностью удалите из стейта модуль vm.
Импортируйте всё обратно. Проверьте terraform plan. Изменений быть не должно. Приложите список выполненных команд и скриншоты процессы.
##Решение


![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/step%203.png)


![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/step%203%203.png)


![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/step%203%204.png)


![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/step%204%201.png)


![илюстрация к проекту](https://github.com/chinchanchonTom/devops-netology/blob/main/04/img/step%204%20finish.png)


