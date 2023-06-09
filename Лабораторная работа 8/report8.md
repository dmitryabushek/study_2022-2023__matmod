---
## Front matter
lang: ru-RU
title: Лабораторная работа №8
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

- Изучить и построить модель конкуренции двух фирм

## Теоретическое введние

Для построения модели конкуренции хотя бы двух фирм необходимо рассмотреть модель одной фирмы. Вначале рассмотрим модель фирмы, производящей продукт долговременного пользования, когда цена его определяется балансом спроса и предложения. Примем, что этот продукт занимает определенную нишу рынка и конкуренты в ней отсутствуют. 

## Теоретическое введние

Обозначим:

$N$ - число потребителей производимого продукта. 

$S$ – доходы потребителей данного продукта. Считаем, что доходы всех потребителей одинаковы. Это предположение справедливо, если речь идет об одной рыночной нише, т.е. производимый продукт ориентирован на определенный слой населения. 

$M$ – оборотные средства предприятия 

$\tau$ - длительность производственного цикла

$p$ - рыночная цена товара 

$\widetilde{p}$ - себестоимость продукта, то есть переменные издержки на производство единицы продукции

## 

$\delta$ - доля оборотных средств, идущая на покрытие переменных издержек

$k$ - постоянные издержки, которые не зависят от количества выпускаемой продукции

$Q(S/p)$ – функция спроса, зависящая от отношения дохода $S$ к цене $p$. Она равна количеству продукта, потребляемого одним потребителем в единицу времени.

## Теоретическое введние. Построение математической модели (1)

Функцию спроса товаров долговременного использования часто представляют в простейшей форме: 

$$Q = q - k\frac{p}{S} = q(1 - \frac{p}{p_{cr}})$$

где $q$ – максимальная потребность одного человека в продукте в единицу времени.
Эта функция падает с ростом цены и при $p = p_{cr}$ (критическая стоимость продукта) потребители отказываются от приобретения товара. Величина $p_{cr} = Sq/k$. Параметр $k$ – мера эластичности функции спроса по цене. Таким образом, функция спроса является пороговой (то есть, $Q(S/p) = 0$ при $p \geq p_{cr}$) и обладает свойствами насыщения.

## Теоретическое введние. Построение математической модели (2)

Уравнения динамики оборотных средств приобретает (1):

$$\frac{dM}{dt} = -\frac{M \delta}{\tau} + NQp - k = -\frac{M\delta}{\tau} + Nq(1 - \frac{p}{p_{cr}})p - k$$

## Теоретическое введние. Построение математической модели (3)

Уравнения динамики оборотных средств приобретает (2):

$$\frac{dM}{dt} = -\frac{M \delta}{\tau}(\frac{p}{p_{cr}}-1) - M^2 ( \frac{\delta}{\tau \widetilde{p} })^2 \frac{p_{cr}}{Nq} - k$$

## Теоретическое введние. Построение математической модели (4)

В обсуждаемой модели параметр $\delta$ всюду входит в сочетании с $\tau$. Это значит, что уменьшение доли оборотных средств, вкладываемых в производство, эквивалентно удлинению производственного цикла. Поэтому мы в дальнейшем положим: $\delta = 1$, а параметр $\tau$ будем считать временем цикла, с учётом сказанного.

## Задание лабораторной работы. Вариант 1

>Случай 1

Рассмотрим две фирмы, производящие взаимозаменяемые товары одинакового качества и находящиеся в одной рыночной нише. Считаем, что в рамках нашей модели конкурентная борьба ведётся только рыночными методами. То есть, конкуренты могут влиять на противника путем изменения параметров своего производства: себестоимость, время цикла, но не могут прямо вмешиваться в ситуацию на рынке («назначать» цену или влиять на потребителей каким-либо иным способом.) Будем считать, что постоянные издержки пренебрежимо малы, и в модели учитывать не будем. В этом случае динамика изменения объемов продаж фирмы 1 и фирмы 2 описывается следующей системой уравнений:

##

$$\frac{dM_1}{d\Theta} = M_1 - \frac{b}{c_1}M_1 M_2 - \frac{a1}{c1} M_1^2 $$

$$ \frac{dM_2}{d\Theta} = \frac{c_2}{c_1} M_2 - \frac{b}{c_1} M_1 M_2 - \frac{a_2}{c_1} M_2^2$$

##

где 

$$ a_1 = \frac{p_{cr}}{\tau_1^2 \widetilde{p}_1^2 Nq } $$
$$ a_2 = \frac{p_{cr}}{\tau_2^2 \widetilde{p}_2^2 Nq } $$ 
$$ b = \frac{p_{cr}}{\tau_1^2 \widetilde{p}_1^2 \tau_2^2 \widetilde{p}_2^2 Nq} $$
$$ c_1 = \frac{p_{cr} - \widetilde{p}_1}{\tau_1 \widetilde{p}_1} $$
$$ c_2 = \frac{p_{cr} - \widetilde{p}_2}{\tau_2 \widetilde{p}_2} $$

также введена нормировка $t = c_1 \Theta$

## Задание лабораторной работы. Вариант 1

>Случай 2

Рассмотрим модель, когда, помимо экономического фактора влияния (изменение себестоимости, производственного цикла, использование кредита и т.п.), используются еще и социально-психологические факторы – формирование общественного предпочтения одного товара другому, не зависимо от их качества и цены. В этом случае взаимодействие двух фирм будет зависеть друг от друга, соответственно коэффициент перед $M_1 M_2$ будет отличаться. Пусть в рамках рассматриваемой модели динамика изменения объемов продаж фирмы 1 и фирмы 2 описывается следующей системой уравнений:

##

$$\frac{dM_1}{d\Theta} = M_1 - (\frac{b}{c_1} + 0.0002)M_1 M_2 - \frac{a1}{c1} M_1^2 $$

$$ \frac{dM_2}{d\Theta} = \frac{c_2}{c_1} M_2 - \frac{b}{c_1} M_1 M_2 - \frac{a_2}{c_1} M_2^2$$

Для обоих случаев рассмотрим задачу со следующими начальными условиями и параметрами

$$ M_0^1=2.5 \: M_0^2=1.5 $$
$$ p_{cr}=15 \: N=17 \: q=1 $$
$$ \tau_1=11 \: \tau_2=14 $$
$$ \widetilde{p}_1=8 \: \widetilde{p}_2=6 $$

## Задачи

1.	Изучить модель конкуренции двух фирм

2.	Построить графики изменения оборотных средств двух фирм для обоих случаев

# Ход выполнения лабораторной работы

## Математическая модель

По представленному выше теоретическому материалу были составлены модели на обоих языках программирования.

# Решение с помощью программ

# Код
Julia
```
using Plots
using DifferentialEquations

kr = 15
t1 = 11
p1 =  8
t2 = 14
p2 = 6
N = 17
q = 1

a1 = kr / (t1 * t1 * p1 * p1 * N * q)
a2 = kr / (t2 * t2 * p2 * p2 * N *q)
b = kr / (t1 * t1 * t2 * t2 * p1 * p1 * p2 * p2 * N * q)
c1 = (kr - p1) / (t1 * p1)
c2 = (kr - p2) / (t2 * p2)


function ode_fn(du, u, p, t)
    M1, M2 = u
    du[1] = u[1] - b / c1*u[1] * u[2] - a1 / c1*u[1] * u[1]
    du[2] = c2 / c1*u[2] - b / c1*u[1] * u[2] - a2 / c1*u[2] * u[2]
end

v0 = [2.5, 1.5]
tspan = (0.0, 30.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
M1 = [u[1] for u in sol.u]
M2 = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
  dpi = 600,
  legend = true)

plot!(plt, T, M1, label = "Оборотные средства фирмы #1", color = :green)

plot!(plt, T, M2, label = "Оборотные средства фирмы #2", color = :red)

savefig(plt, "lab08_1.png")

```
```
using Plots
using DifferentialEquations

kr = 15
t1 = 11
p1 =  8
t2 = 14
p2 = 6
N = 17
q = 1

a1 = kr / (t1 * t1 * p1 * p1 * N * q)
a2 = kr / (t2 * t2 * p2 * p2 * N *q)
b = kr / (t1 * t1 * t2 * t2 * p1 * p1 * p2 * p2 * N * q)
c1 = (kr - p1) / (t1 * p1)
c2 = (kr - p2) / (t2 * p2)


function ode_fn(du, u, p, t)
    M1, M2 = u
    du[1] = u[1] - (b / c1 + 0.0002)*u[1] * u[2] - a1 / c1*u[1] * u[1]
    du[2] = c2 / c1*u[2] - b / c1*u[1] * u[2] - a2 / c1*u[2] * u[2]
end

v0 = [8.8, 9.9]
tspan = (0.0, 30.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
M1 = [u[1] for u in sol.u]
M2 = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
  dpi = 600,
  legend = :topright)

plot!(plt, T, M1, label = "Оборотные средства фирмы #1", color = :green)

plot!(plt, T, M2, label = "Оборотные средства фирмы #2", color = :red)

savefig(plt, "lab08_2.png")

```
OpenModelica
```
model lab08_1
Real kr = 15;
Real t1 = 11;
Real p1 = 8;
Real t2 = 14;
Real p2 = 6;
Real N = 17;
Real q = 1;

Real a1 = kr / (t1 * t1 * p1 * p1 * N * q);
Real a2 = kr / (t2 * t2 * p2 * p2 * N * q);
Real b = kr / (t1 * t1 * t2 * t2 * p1 * p1 * p2 * p2 * N * q);
Real c1 = (kr - p1) / (t1 * p1);
Real c2 = (kr - p2) / (t2 * p2);

Real M1;
Real M2;
initial equation
M1 = 2.5;
M2 = 1.5;
equation
der(M1) = M1 - b / c1 * M1 * M2 - a1 / c1 * M1 * M1;
der(M2) = c2 / c1 * M2 - b / c1 * M1 * M2 - a2 / c1 * M2 * M2;
end lab08_1;

```
```
model lab08_2
Real kr = 15;
Real t1 = 11;
Real p1 = 8;
Real t2 = 14;
Real p2 = 6;
Real N = 17;
Real q = 1;

Real a1 = kr / (t1 * t1 * p1 * p1 * N * q);
Real a2 = kr / (t2 * t2 * p2 * p2 * N * q);
Real b = kr / (t1 * t1 * t2 * t2 * p1 * p1 * p2 * p2 * N * q);
Real c1 = (kr - p1) / (t1 * p1);
Real c2 = (kr - p2) / (t2 * p2);

Real M1;
Real M2;
initial equation
M1 = 2.5;
M2 = 1.5;
equation
der(M1) = M1 - (b / c1 + 0.0002) * M1 * M2 - a1 / c1 * M1 * M1;
der(M2) = c2 / c1 * M2 - b / c1 * M1 * M2 - a2 / c1 * M2 * M2;
end lab08_2;
```

## Результаты работы кода на Julia и Open Modelica для первого случая:



!["График, построенный на языке Julia"](https://github.com/dmitryabushek/study_2022-2023__matmod/blob/master/Лабораторная%20работа%208/images/lab08_1.png)



!["График, построенный на языке Open Modelica"](https://github.com/dmitryabushek/study_2022-2023__matmod/blob/master/Лабораторная%20работа%208/images/Снимок%20экрана%20от%202023-04-15%2012-18-04.png)



## Результаты работы кода на Julia и Open Modelica для второго случая:



!["График, построенный на языке Julia"](https://github.com/dmitryabushek/study_2022-2023__matmod/blob/master/Лабораторная%20работа%208/images/lab08_2.png)



!["График, построенный на языке Open Modelica"](https://github.com/dmitryabushek/study_2022-2023__matmod/blob/master/Лабораторная%20работа%208/images/Снимок%20экрана%20от%202023-04-15%2012-18-37.png
)


## Анализ полученных результатов. Сравнение языков.

- В итоге проделанной работы на языках Julia и OpenModelica мы построили графики изменения оборотных средств для двух фирм для случаев, когда конкурентная борьба ведётся только рыночными методами и когда, помимо экономического фактора влияния, используются еще и социально-психологические факторы

- Кроме того, построение модели конкуренции двух фирм на языке OpenModelica занимает значительно меньше строк кода, чем аналогичное построение на Julia

# Вывод

## Вывод

В ходе выполнения лабораторной работы была изучена модель конкуренции двух фирм и в дальнейшем построена модель на языках Julia и Open Modelica.

## Список литературы. Библиография

[1] Документация по Julia: https://docs.julialang.org/en/v1/

[2] Документация по OpenModelica: https://openmodelica.org/

[3] Решение дифференциальных уравнений: https://www.wolframalpha.com/

[4] Мальтузианская модель роста: https://www.stolaf.edu//people/mckelvey/envision.dir/malthus.html

[5] Математические модели конкурентной среды: https://dspace.spbu.ru/bitstream/11701/12019/1/Gorynya_2018.pdf
