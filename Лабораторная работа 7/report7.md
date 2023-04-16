---
## Front matter
lang: ru-RU
title: Лабораторная работа №7
author: Абушек Дмитрий Олегович
institute: 2023, Москва
date: НФИбд-01-20


## Formatting
toc: false
slide_level: 2
theme: metropolis
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
---

## Цель лабораторной работы: 
**Изучить модель проведения рекламной кампании.**

## Основные сведения:
Модель рекламной кампании описывается следующими величинами.
Считаем, что dn/dt - скорость изменения со временем числа потребителей,
узнавших о товаре и готовых его купить, t - время, прошедшее с начала рекламной кампании, n(t) - число уже информированных клиентов. Эта величина
пропорциональна числу покупателей, еще не знающих о нем, это описывается
следующим образом: alpha1(t)(N - n(t)) , где N
платежеспособных покупателей, alpha1(t) > 0
Общее число потенциальных характеризует интенсивность
рекламной кампании (зависит от затрат на рекламу в данный момент времени).
Помимо этого, узнавшие о товаре потребители также распространяют полученную информацию среди потенциальных покупателей, не знающих о нем (в этом случае работает т.н. сарафанное радио). Этот вклад в рекламу описывается величиной alpha2(t)n(t)(N - n(t)), эта величина увеличивается с увеличением потребителей узнавших о товаре. Математическая модель распространения рекламы описывается уравнением:

![Рис.1](https://github.com/dmitryabushek/MathModeling-/blob/main/Лабораторная%20работа%20№7/lab71pic.png)



## Задачи:
29 января в городе открылся новый салон красоты. Полагаем, что на момент
открытия о салоне знали N0 потенциальных клиентов. По маркетинговым
исследованиям известно, что в районе проживают N потенциальных клиентов салона. Поэтому после открытия салона руководитель запускает активную рекламную компанию. После этого скорость изменения числа знающих о салоне пропорциональна как числу знающих о нем, так и числу не знаю о нем.
1. Построить график распространения рекламы о салоне красоты
2. Сравнить эффективность рекламной кампании
3. Определить в какой момент времени эффективность рекламы будет иметь максимально быстрый рост (на вашем примере).
4. Построить решение, если учитывать вклад только платной рекламы
5. Построить решение, если предположить, что информация о товаре
распространятся только путем «сарафанного радио», сравнить оба решения


## Ход выполнения лабораторной работы: 
# Код:
Julia
```
using Plots
using DifferentialEquations

N = 500	
n0 = 5

function ode_fn(du, u, p, t)
    (n) = u
    du[1] = (0.55 + 0.0001*u[1])*(N - u[1])
end

v0 = [n0]
tspan = (0.0, 30.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
n = [u[1] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
  dpi = 600,
  title = "Эффективность распространения рекламы (1) ",
  legend = false)
plot!(
  plt,
  T,
  n,
  color = :red)

savefig(plt, "lab07_1.png")
```
```
using Plots
using DifferentialEquations

N = 500
n0 = 5

function ode_fn(du, u, p, t)
    (n) = u
    du[1] = (0.00005 + 0.2*u[1])*(N - u[1])
end

v0 = [n0]
tspan = (0.0, 0.1)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob)
n = [u[1] for u in sol.u]
T = [t for t in sol.t]

max_dn = 0;
max_dn_t = 0;
max_dn_n = 0;
for (i, t) in enumerate(T)
    if sol(t, Val{1})[1] > max_dn
        global max_dn = sol(t, Val{1})[1]
        global max_dn_t = t
        global max_dn_n = n[i]
    end
end

plt = plot(
  dpi = 600,
  title = "Эффективность распространения рекламы (2) ",
  legend = false)
plot!(
  plt,
  T,
  n,
  color = :red)
plot!(
  plt,
  [max_dn_t],
  [max_dn_n],
  seriestype = :scatter,
  color = :red)

savefig(plt, "lab07_2.png")
```
```
using Plots
using DifferentialEquations

N = 500
n0 = 5

function ode_fn(du, u, p, t)
    (n) = u
    du[1] = (0.5*sin(t) + 0.3*cos(t)*u[1])*(N - u[1])
end

v0 = [n0]
tspan = (0.0, 0.1)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
n = [u[1] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
  dpi = 600,
  title = "Эффективность распространения рекламы (3) ",
  legend = false)
plot!(
  plt,
  T,
  n,
  color = :red)

savefig(plt, "lab07_3.png")
```
OpenModelica
```
model lab07_1
Real N = 500;
Real n;
initial equation
n = 5;
equation
der(n) = (0.55 + 0.00011*n)*(N-n);
end lab07_1;
```
```
model lab07_2
Real N = 500;
Real n;
initial equation
n = 5;
equation
der(n) = (0.00005 + 0.2*n)*(N-n);
end lab07_2;
```
```
model lab07_3
Real N = 860;
Real n;
initial equation
n = 2;
equation
der(n) = (0.5*sin(time) + 0.3*cos(time)*n)*(N-n);
end lab07_3;
```
График численности хищников от численности жертв, график численности хищников и жертв от времени.
**Julia:**
![Рис.3](https://github.com/dmitryabushek/MathModeling-/blob/main/Лабораторная%20работа%20№7/lab07_1.png)
![Рис.4](https://github.com/dmitryabushek/MathModeling-/blob/main/Лабораторная%20работа%20№7/lab07_2.png)
![Рис.5](https://github.com/dmitryabushek/MathModeling-/blob/main/Лабораторная%20работа%20№7/lab07_3.png)

## Вывод:
У нас получилось построить модель проведения рекламной кампании. На примере имеющихся графиков можно наглядно проследить поведение функции (количества людей) во время проведения кампании. 

## Список литературы:
1. Документация по Julia: https://docs.julialang.org/en/v1/
2. Документация по OpenModelica: https://openmodelica.org/