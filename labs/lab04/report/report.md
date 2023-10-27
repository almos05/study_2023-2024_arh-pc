---
## Front matter
title: "Отчёт по лабораторной работе №4"
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

Освоение процедуры компиляции и сборки программ, написанных на ассемблере *NASM*.

# Выполнение лабораторной работы

## Программа Hello world!

<p>Рассмотрим пример простой программы на языке ассемблера NASM. Традиционно первая
программа выводит приветственное сообщение *Hello world!* на экран.</p>
<p>Создаем каталог для работы с программами на языке ассемблера *NASM* (рис. [-@fig:001]):<p>

![Создаем каталог для работы](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-03-14.png){#fig:001 width=70%}

<p>Переходим в каталог *lab4* и создаем в нем файл с именем *hello.asm*.</p>

![Asm-файл](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-48-29.png){#fig:002 width=70%}

<p>Открываем этот файл с помощью текстового редактора *gedit*.</p>

![Открываем файл](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-04-32.png){#fig:003 width=70%}

<p>Вводим в него текст для последующей компиляции.</p>

![Вводим текст](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-06-21.png){#fig:004 width=70%}

## Транслятор NASM

<p>NASM превращает текст программы в объектный код. Компилируем приведённый выше текст программы, проверяем наличие нового файла *hello.o*.</p>

![Компилируем текст](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-07-59.png){#fig:005 width=70%}

## Расширенный синтаксис командной строки NASM

<p>Данная команда скомпилирует исходный файл *hello.asm* в *obj.o* (опция *-o* позволяет задать имя объектного файла, в данном случае *obj.o*), при этом формат выходного файла будет *elf*, и в него будут включены символы для отладки (опция *-g*), кроме того, будет создан файл листинга *list.lst* (опция *-l*).</p>
<p>Проверяем существование созданных файлов с помощью команды *ls*.</p>

![Присваиваем имя скомпилированному файлу и создаем файл листинга](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-10-04.png){#fig:006 width=70%}

## Компоновщик LD

<p>Объектный файл необходимо передать на обработку компоновщику.</p>

![Передаем файл hello.o на обработку](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-12-04.png){#fig:007 width=70%}

<p>Для тренировки отправляем на обработку компоновщику файл *obj.o* и называем его *main*.</p>

![Передаем файл obj.o на обработку](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 01-25-23.png){#fig:008 width=70%}

## Запуск исполняемого файла

<p>Запустить на выполнение созданный исполняемый файл, находящийся в текущем каталоге, можно, набрав в командной строке *./hello* .</p>

![Запускаем исполняемый файл](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-13-31.png){#fig:009 width=70%}

## Задание для самостоятельной работы

<p>В каталоге *~/work/arch-pc/lab04* с помощью команды *cp* создайте копию файла
*hello.asm* с именем *lab4.asm*.</p>

![Копируем файл hello.asm](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-16-55.png){#fig:010 width=70%}

<p>С помощью текстового редактора вносим изменения в текст программы в файле *lab4.asm* так, чтобы вместо *Hello world!* на экран выводилась строка с фамилией и именем.</p>

![Вносим изменения в текст программы](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-19-12.png){#fig:010 width=70%}

<p>Транслируем полученный текст программы *lab4.asm* в объектный файл. Выполнияем компоновку объектного файла и запускаем получившийся исполняемый файл.</p>

![Транслируем текст](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-23-14.png){#fig:011 width=70%}

<p>Переносим файлы *hello.asm* и *lab4.asm* в локальный репозиторий в ката-
лог *~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab04/*.</p>

![Переносим файлы](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-26-59.png){#fig:012 width=70%}

<p>Загружаем файлы на *Github*.</p>

![Загрузка файлов на Github](/home/admosolov/work/study/2023-2024/Архитектура компьютера/arch-pc/labs/lab04/report/image/Снимок экрана от 2023-10-28 00-28-25.png){#fig:012 width=70%}

# Выводы

В ходе выполнения лабораторной работы были освоены процедуры компиляции и сборки программ, написанных на ассемблере *NASM*.
