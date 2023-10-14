---
## Front matter
title: "Отчёт по лабораторной работе №2"
subtitle: "дисциплина: Архитектура вычислительных систем"
author: "Мосолов Александр Денисович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является изучить идеологию и применение средств контроля
версий. Приобрести практические навыки по работе с системой *git*.

# Выполнение лабораторной работы

## Базовая настройка git

Сделаем предварительную конфигурацию git. Для этого вводим
команды, представленные на картинке (рис. fig:001), указывая своё имя и email.

![Предварительная конфигурация git](image/Снимок экрана от 2023-10-14 20-10-29.png){#fig:001 width=70%}

В выводе сообщений *git* настроим кодировку *utf-8*.

![Настройка utf-8](image/Снимок экрана от 2023-10-14 20-10-40.png){#fig:002 width=70%}

Зададим название начальной ветки, назовём её *master*

![Основная ветка](image/Снимок экрана от 2023-10-14 20-10-50.png){#fig:003 width=70%}

Подключаем параметры *core.safecrlf warn* и *core.autocrlf input*.

![Параметры autocrlf и safecrlf](image/Снимок экрана от 2023-10-14 20-10-57.png){#fig:004 width=70%}

## Создание SSH ключа

С помощью команды *ssh-keygen -C* создаём пару ключей, они сохранятся в
каталоге *~/.ssh/.* Просмотрим содержимое этого каталога с помощью *ls*.

![Генерируем ключи](image/Снимок экрана от 2023-10-14 20-11-06.png){#fig:005 width=70%}

Сгенерированный ключ загружаем в раздел SSH and GPG keys. Для ключа
указываем имя Title.

![Ключ](image/Снимок экрана от 2023-10-14 20-11-18.png){#fig:006 width=70%}

![Раздел настроек Add new SSH Key на github](image/Снимок экрана от 2023-10-14 20-11-28.png){#fig:007 width=70%}

![Созданный ключ Title](image/Снимок экрана от 2023-10-14 20-11-35.png){#fig:008 width=70%}

## Создание рабочего пространства и репозитория курса

Создаем рабочее пространство, с помощью команды *mkdir -p ~/work/study/2023-
2024/"Архитектура компьютера"* составляем каталог, состоящий из других
подкаталогов (используя параметр *-p*).

![Создание рабочего пространства](image/Снимок экрана от 2023-10-14 20-11-42.png){#fig:009 width=70%}

## Создание репозитория курса на основе шаблона

Переходим по ссылке, используем в качестве репозитория шаблон.

![Копируем шаблон](image/Снимок экрана от 2023-10-14 20-11-48.png){#fig:010 width=70%}

Создаем свой репозиторий с названием *study_2023-2024_arh-pc*.

![Личный репозиторий](image/Снимок экрана от 2023-10-14 20-11-58.png){#fig:011 width=70%}

Копируем ссылку для клонирования в разделе Code/SSH. Переходим в каталог
курса *cd ~/work/study/2023-2024/"Архитектура компьютера"*. И с помощью команды
*git clone –recursive git@github.com:almos05/study_2023-2024_arh-pc.git arch-pc*
клонируем репозиторий.

![Ссылка на репозиторий](image/Снимок экрана от 2023-10-14 20-12-06.png){#fig:012 width=70%}

![Клонирование репозитория](image/Снимок экрана от 2023-10-14 20-12-16.png){#fig:013 width=70%}

## Настройка каталога курса

Переходим каталог курса: *cd ~/work/study/2023-2024/"Архитектура
компьютера"/study_2023-2024_arh-pc*. Удаляем лишние файлы: *rm package.json*

![Удаление package.json](image/Снимок экрана от 2023-10-14 20-12-25.png){#fig:014 width=70%}

Создаем необходимые каталоги и отправляем файлы на сервер. Для сохранения
изменений на сервере мы используем цепочку команд: *git add . git commit -am
‘комментарий’ git push*.

![Отправка на сервер](image/Снимок экрана от 2023-10-14 20-12-36.png){#fig:015 width=70%}

Проверим правильность создания иерархии рабочего пространства. На
странице *github* мы видим, что текстовый файл формата *json – package.json* был
удалён, помимо этого появился комментарий: *fear(main) make course structure*.

![Фиксирование изменений](image/Снимок экрана от 2023-10-14 20-12-45.png){#fig:016 width=70%}

Создаём каталог labs и три подкаталога lab01, lab02, lab03

![Подкаталоги lab01, lab02, lab03](image/Снимок экрана от 2023-10-14 20-12-56.png){#fig:017 width=70%}

С помощью mv перемещаем лабораторную работу №1 в каталог lab01.

![Перемещение лабораторной работы №1](image/Снимок экрана от 2023-10-14 20-13-02.png){#fig:018 width=70%}

Сохраним изменения на сервере.

![Отправка изменений на сервер](image/Снимок экрана от 2023-10-14 20-13-08.png){#fig:019 width=70%}

![Папки репозитория после проделанной работы](image/Снимок экрана от 2023-10-14 20-13-18.png){#fig:020 width=70%}

# Выводы

В ходе выполнения лабораторной работы были изучены базовые команды и их
опции для работы с *git*. Были приобретены практические навыки взаимодействия с
системой контроля версий.
