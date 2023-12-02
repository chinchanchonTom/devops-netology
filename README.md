# 1 Задание 

#2 Изучите файл .gitignore. В каком terraform-файле, согласно этому .gitignore, допустимо сохранить личную, секретную информацию?

Все секретную личную информацию будем хранить в файле personal.auto.tfvars

#3 Выполните код проекта. Найдите в state-файле секретное содержимое созданного ресурса random_password, пришлите в качестве ответа конкретный ключ и его значение.

![Секретный ключ](https://github.com/chinchanchonTom/devops-netology/blob/main/terraform%20secret%20key.png)

#4 Раскомментируйте блок кода, примерно расположенный на строчках 29–42 файла main.tf. Выполните команду terraform validate. Объясните, в чём заключаются намеренно допущенные ошибки. Исправьте их.
прописал в Docker {
 host = "npipe:////.//pipe//docker_engine"
}

Изменил 
name  = "example_${random_password.random_string_FAKE.resulT}"

Изменил 
resource "docker_container" "1nginx" {
#5 5 Выполните код. В качестве ответа приложите: исправленный фрагмент кода и вывод команды docker ps.
![Изменил имя ](https://github.com/chinchanchonTom/devops-netology/blob/main/running%20container%20%7Bsecret%7D.png)

#6 Замените имя docker-контейнера в блоке кода на hello_world. Не перепутайте имя контейнера и имя образа. Мы всё ещё продолжаем использовать name = "nginx:latest". Выполните команду terraform apply -auto-approve. Объясните своими словами, в чём может быть опасность применения ключа -auto-approve. Догадайтесь или нагуглите зачем может пригодиться данный ключ? В качестве ответа дополнительно приложите вывод команды docker ps.


![Изменил имя ](https://github.com/chinchanchonTom/devops-netology/blob/main/dcoker%20container%20change%20name.png)

--auto-approve - Достатосно опасная команда которая позволяет без подтверждение (Когда нужно проверить и подтвердить деплой ) производить деплой инфаструктуры. Опасна тем что нужно проверять что делаешь в своей инфаструктуре даже если перед этим проверил plan"он


#7 Уничтожьте созданные ресурсы с помощью terraform. Убедитесь, что все ресурсы удалены. Приложите содержимое файла terraform.tfstate.

![Изменил имя ](https://github.com/chinchanchonTom/devops-netology/blob/main/destroy%20all.png)

#8 Объясните, почему при этом не был удалён docker-образ nginx:latest. Ответ обязательно подкрепите строчкой из документации terraform провайдера docker. (ищите в классификаторе resource docker_image )
образ nginx был не удален из за строчки keep_locally = true которая явно говорит что не нужно удалять образ после "разрушения" тераформа  











