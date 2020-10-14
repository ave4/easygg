# Простая графическая оболочка для SubVersion


Это простая графическая оболочка для SVN, написанная на bash, с использованием технологий yad, lxterminal* и leafpad*
             *- в коде можно поменять*

Он написан по принципу KISS, поэтому принципиально не предоставляет сложных и продвинутых функций. Его задача ускорить типовые операции svn client cli: commit, add, status, up.

Для более сложных функций есть кнопка "Терминал", позволяющая использовать все мысленные и немысленные возможности SubVersion

Также в комплекте предоставляется интеграция с файловыми менеджерами, позволяющие через контекстное меню вызывать основной интерфейс, делать git clone в этом каталоге и добавлять файлы в индекс SVN




# Установка

Запустите от обычного пользователя скрипт **install.sh** после чего в контекстном меню должны появится команды серии SVN GUI - *


> Установщик **install.sh** может устанавливать easygg как в домашнию папку пользователя *.local*, так и в /opt в зависимости от какого пользователя была запущена установка
