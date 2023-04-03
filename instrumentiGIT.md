1 Найдите полный хеш и комментарий коммита, хеш которого начинается на aefea
  git show aefea
aefead2207ef7e2aa5dc81a34aedf0cad4c32545
 Update CHANGELOG.md

2 Какому тегу соответствует коммит 85024d3?  -  
 git show 85024d3     tag: v0.12.23

3 Сколько родителей у коммита b8d720? Напишите их хеши. 
git show b8d720^     56cd7859e05c36c06b56d013b55a252d0bb7e158
git show b8d720^2       9ea88f22fc6269854151c571162c5bcf958bee2b
git show b8d720^3    fatal: ambiguous argument 'b8d720^3': unknown revision or path not in the working tree.
2 родителя

4 Перечислите хеши и комментарии всех коммитов, которые были сделаны между тегами v0.12.23 и v0.12.24.
 git log v0.12.23..v0.12.24 --oneline
33ff1c03bb (tag: v0.12.24) v0.12.24
b14b74c493 [Website] vmc provider links
3f235065b9 Update CHANGELOG.md
6ae64e247b registry: Fix panic when server is unreachable
5c619ca1ba website: Remove links to the getting started guide's old location
06275647e2 Update CHANGELOG.md
d5f9411f51 command: Fix bug when using terraform login on Windows
4b6d06cc5d Update CHANGELOG.md
dd01a35078 Update CHANGELOG.md
225466bc3e Cleanup after v0.12.23 release

5 Найдите коммит, в котором была создана функция func providerSource, её определение в коде выглядит так: func providerSource(...) (вместо троеточия перечислены аргументы).

 git log -S'func providerSource(' --oneline
8c928e8358 main: Consult local directories as potential mirrors of providers


6 Найдите все коммиты, в которых была изменена функция globalPluginDirs.

git grep 'func globalPluginDirs'
git log -L :'func globalPluginDirs':plugins.go --oneline

78b1220558
52dbf94834
41ab0aef7a
66ebff90cd
8364383c35


7 Кто автор функции synchronizedWriters?

git log -S'func synchronizedWriters(' --oneline
bdfea50cc8 remove unused
5ac311e2a9 main: synchronize writes to VT100-faker on Windows

git show bdfea50cc8 - удаление
git show 5ac311e2a9 - создание

Автор:
Author: Martin Atkins <mart@degeneration.co.uk>
Date:   Wed May 3 16:25:41 2017 -0700