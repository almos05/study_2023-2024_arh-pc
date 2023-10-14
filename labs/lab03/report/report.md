---
## Front matter
title: "Отчёт по лабораторной работе"
subtitle: "Простейший вариант"
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

</p>Целью работы является освоение процедуры оформления отчетов с помощью легковесного
языка разметки Markdown.</p>

# Выполнение лабораторной работы

</p>Откройте терминал</p>
</p>Перейдите в каталог курса сформированный при выполнении лабораторной работы
№2:</p>

![Переход в каталог arch-pc](image/Снимок экрана от 2023-10-14 17-42-22.png){#fig:001 width=70%}

Обновите локальный репозиторий, скачав изменения из удаленного репозитория с помо-
щью команды *git pull*.

![Обновление репозитория](image/Снимок экрана от 2023-10-14 17-42-55.png){#fig:001 width=70%}

Перейдите в каталог с шаблоном отчета по лабораторной работе № 3

![Переход в  каталог lab03/report](image/Снимок экрана от 2023-10-14 17-43-45.png){#fig:001 width=70%}

Проведите компиляцию шаблона с использованием Makefile. Для этого введите ко-
манду *make*.

![Компилируем шаблон](image/Снимок экрана от 2023-10-14 17-44-54.png){#fig:001 width=70%}

Удалите полученный файлы с использованием Makefile. Для этого введите команду *make clean*

![Удаление make-файлов](image/Снимок экрана от 2023-10-14 17-47-19.png){#fig:001 width=70%}

Проверьте, что после этой команды файлы *report.pdf* и *report.docx* были удалены.

![Проверка удаленных файлов](image/Снимок экрана от 2023-10-14 18-20-27.png){#fig:001 width=70%}

Откройте файл *report.md* c помощью любого текстового редактора, например *gedit report.md*

![Открываем файл](image/Снимок экрана от 2023-10-14 17-50-12.png){#fig:001 width=70%}

Заполните отчет и скомпилируйте отчет с использованием Makefile. Проверьте кор-
ректность полученных файлов. (Обратите внимание, для корректного отображения
скриншотов они должны быть размещены в каталоге *image*)

![Ход выполнения работы и каталог image](image/Снимок экрана от 2023-10-14 18-28-26.png){#fig:001 width=70%}

# Задание для самостоятельной работы

В соответствующем каталоге сделайте отчёт по лабораторной работе № 2 в формате
Markdown. В качестве отчёта необходимо предоставить отчёты в 3 форматах: pdf, docx
и md.

![Форматы отчётов](image/Снимок экрана от 2023-10-14 19-16-09.png){#fig:001 width=70%}

Загрузите файлы на github.

![Форматы отчётов](image/Снимок экрана от 2023-10-14 19-20-06.png){#fig:001 width=70%}

# Выводы

В ходе выполнения лабораторной работы были приобретены навыки оформления отчетов с помощью языка разметки *Markdown*.
