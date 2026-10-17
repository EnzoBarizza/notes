#import "./lib/notes.typ": *
#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4"
#show: note-style.with(aluno: "Enzo Barizza Leal")

#begin-note(
  materia: "Cálculo Diferencial e Integral I",
  aula: "Resumo",
  professor: "Mohsen Amiri"
)

#let dom = math.op("Dom")
#let tgh = math.op("tgh")
#let img = math.op("Im")
#let sen = math.op("sen")
#let senh = math.op("senh")
#let arcsen = math.op("arcsen")
#let cotg = math.op("cotg")

= Função
== Definição <defun>
- Sejam $x_1$ e $x_2 in RR, f: A -> B$, se $x_1 = x_2, f(x_1) = f(x_2)$, resumindo, uma função associa um elemento de um conjunto $A$ *UNICAMENTE* a um elemento de um conjunto $B$.

#cetz.canvas({
  import cetz.draw: *

  circle((0,0), radius: (1,2))
  circle((4,0), radius: (1,2))

  circle((0,0), radius: 3pt, fill: black)
  circle((0,-1), radius: 3pt, fill: black)
  circle((0,1), radius: 3pt, fill: black)

  circle((4,0), radius: 3pt, fill: black)
  circle((4,-1), radius: 3pt, fill: black)
  circle((4,1), radius: 3pt, fill: black)

  content((0,2.4), [#text(size: 16pt)[$A$]])
  content((4,2.4), [#text(size: 16pt)[$B$]])

  line((0,0), (3.9, -1), mark: (end: ")>", fill: black))
  line((0,-1), (3.9, 0), mark: (end: ")>", fill: black))
  line((0,1), (3.9, 1), mark: (end: ")>", fill: black))
})

- A imagem acima representa uma função $f: A -> B$.

#cetz.canvas({
  import cetz.draw: *

  circle((0,0), radius: (1,2))
  circle((4,0), radius: (1,2))

  circle((0,0), radius: 3pt, fill: black)
  circle((0,-1), radius: 3pt, fill: black)
  circle((0,1), radius: 3pt, fill: black)

  circle((4,0), radius: 3pt, fill: black)
  circle((4,-1), radius: 3pt, fill: black)
  circle((4,1), radius: 3pt, fill: black)

  content((0,2.4), [#text(size: 16pt)[$A$]])
  content((4,2.4), [#text(size: 16pt)[$B$]])

  line((0,0), (3.9, -1), mark: (end: ")>", fill: black))
  line((0,0), (3.9, 0), mark: (end: ")>", fill: black))
  line((0,1), (3.9, 1), mark: (end: ")>", fill: black))
})

- A imagem acima não é uma função, pois o elemento dois de $A$ se associa a dois elementos de $B$.

- *OBS:*
#cetz.canvas({
  import cetz.draw: *

  circle((0,0), radius: (1,2))
  circle((4,0), radius: (1,2))

  circle((0,0), radius: 3pt, fill: black)
  circle((0,-1), radius: 3pt, fill: black)
  circle((0,1), radius: 3pt, fill: black)

  circle((4,0), radius: 3pt, fill: black)
  circle((4,-1), radius: 3pt, fill: black)
  circle((4,1), radius: 3pt, fill: black)

  content((0,2.4), [#text(size: 16pt)[$A$]])
  content((4,2.4), [#text(size: 16pt)[$B$]])

  line((0,0), (3.9, 0), mark: (end: ")>", fill: black))
  line((0,-1), (3.9, 0), mark: (end: ")>", fill: black))
  line((0,1), (3.9, 1), mark: (end: ")>", fill: black))
})

A imagem acima representa uma função, dois elementos de $A$ podem se associar a um único elemento em $B$.

== Definição de função real
- $ h(x) = (f(x))/(g(x)) $ é uma função real quando $dom(h) = RR - {x in RR | g(x) = 0}$.

== Operações entre funções
- Sejam $f$ e $g$ duas funções e $k in RR$ uma constante, então:
  - $(f + g)(x) = f(x) + g(x), dom(f + g) = dom(f) inter dom(g)$
  - $(k f)(x) = k f(x)$
  - $(f dot g)(x) = f(x)g(x), dom(f dot g) = dom(f) inter dom(g)$
  - $(f compose g)(x) = f(g(x)), dom(f compose g) = {x in dom(f), f(x) in dom(g)}$.

== Gráfico de funções
- Seja $f$ uma função, o gráfico de $f$ é o conjunto $(x, f(x)), x in dom(f)$.

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(axis-style: "school-book", x-tick-step: 1, y-tick-step: 1, x-min: 0, y-min: 0, x-max: 10, y-max: 10, size: (6, 6), {
    plot.add(x => x, domain: (0, 10), label: [$f(x) = x$])
    plot.add(x => calc.pow((x), 2), domain: (0, 10), label: [$g(x) = x^2$])
    plot.add(x => 2*x, domain: (0, 10), label: [$g'(x) = 2x$])
  })
})

== Paridade de funções
- $f(x)$ é par se $f(-x) = f(x), forall x in dom(f)$
- $f(x)$ é impar se $f(-x) = -f(x), forall x in dom(f)$.

=== Paridades importantes
  - $cos(-x) = cos(x)$
  - $sec(-x) = sec(x)$
  - $arccos(-x) = arccos(x)$
  - $sen(-x) = -sen(x)$
  - $csc(-x) = -csc(x)$
  - $arcsen(-x) = -arcsen(x)$
  - $tg(-x) = -tg(x)$
  - $cotg(-x) = -cotg(x)$

#pagebreak()

== Funções injetoras, sobrejetoras e bijetoras
- Seja $f: A -> B$ uma função.

=== Função injetora <injetora>
- $f$ é injetora se $forall x_1, x_2 in dom(f), f(x_1) = f(x_2)$, quando, $x_1 = x_2$. Não confundir com a #text(fill: blue)[@defun[definição de função]], simplificando, uma função só é injetora se todos os elementos em $B$ se associarem unicamente com um elemento em $A$.

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(
    size: (10,10),
    x-tick-step: 1,
    y-tick-step: 1,
    x-min: -5,
    x-max: 10,
    y-min: -5,
    y-max: 10,
    axis-style: "school-book", {
      plot.add(x => x, domain: (-5,10), label: [$f(x) = x$])
      plot.add(x => calc.pow(x, 2) - 12*x + 36, domain: (-5, 10), label: [$g(x) = x^2 - 12x + 36$], samples: 200)
      plot.add(x => calc.pow(x, 3), domain: (-5, 10), label: [$h(x) = x^3$], samples: 200)
    }
  )
}) <funimg>

- Na #link(<funimg>)[#text(fill: blue)[imagem acima]] as funções $f$ e $h$ são injetoras, pois todas as coordenadas $y$ se associam a outra coordenada $x$, definindo apenas um ponto. Já a função $g$ não possui essa propriedade, uma única coordenada $y$ pode possuir até dois pontos associados a ela, como por exemplo $g(5) = 1$ e $g(7) = 1$.

=== Função sobrejetora <sobrejetora>
- $f$ é sobrejetora  se $forall y in B exists x in A | f(x) = y$, isso significa dizer que $f$ é sobrejetora se para qualquer elemento $y$ do conjunto $B$ existir um elemento $x$ do conjunto $A$ que se associa a ele, #link(<funimg>)[#text(fill: blue)[na imagem acima]], tanto $f$ quato $h$ são sobrejetoras.

=== Função bijetora
- $f$ é bijetora quando ela é tanto @injetora[Injetora] quanto @sobrejetora[Sobrejetora], na #link(<funimg>)[imagem acima] $h$ é bijetora.

- Obs: se $f$ é injetora existe uma função $g: B -> A | (g compose f)(x) = x = I(x), forall x in dom(f)$, essa função é chamada de inversa de $f$, $f^(-1)$.

== Função logarítmica
- Definição: $ log_b a = x <=> b^x = a $

- Gráfico:
#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(
    size: (5,5),
    x-tick-step: none,
    y-tick-step: none,
    x-min: 0,
    x-max: 10,
    y-min: 0,
    y-max: 3,
    axis-style: "school-book", {
      plot.add(x => calc.log(x), domain: (1, 10), label: [$f(x) = log_b (a) | a, b > 0 "e" b != 1$])
    }
  )
})

- Para qualquer base valem as seguintes propriedades:
  - Logaritmo do produto $ log(a dot b) = log(a) + log(b) $
  - Logaritmo do quociente $ log(a/b) = log(a) - log(b) $
  - Logaritmo da exponenciação $ log(a^n) = n dot log(a) $

  - Mudança de base $ log_b (a) = (log_c (a))/(log_c (b)) $


== Função parte inteira ou função piso
- Definição formal
  - Seja $x in RR$, então existe a parte inteira $m_x in ZZ$ tal que $m_x <= x <= m_x + 1$, a representação simbólica é $ f(x) = [x] $ ou $ f(x) = floor(x) $

- Gráfico:
#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(
    size: (5,5),
    x-tick-step: 1,
    y-tick-step: 1,
    x-min: -3,
    x-max: 6,
    y-min: -3,
    y-max: 3,
    axis-style: "school-book", {
      plot.add(x => calc.floor(x), domain: (-5, 10), line: "hvh", label: [$f(x) = [x] = floor(x)$])
    }
  )
})
 
== Funcões hiperbólicas
- Seno hiperbólico: $ senh(x) = (e^x - e^(-x))/2," "forall x in RR $
- Cosseno hiperbólico: $ cosh(x) = (e^x + e^(-x))/2," "forall x in RR $
- Tangente hiperbólica: $ tanh(x) = tgh(x) = (e^x - e^(-x))/(e^x + e^(-x)) = senh(x)/cosh(x) $

=== Características de funções hiperbólicas
- $ dom(senh) = dom(cosh) = RR$
- $img(senh) = RR$
- $img(cosh) = [1, infinity)$
- $senh$ é par
- $cosh$ é ímpar

=== Identidades importantes das funções hiperbólicas e trigonométricas
- $ cosh^2(x) - senh^2(x) = 1 $
- $ 1 + tg^2(x) = sec^2(x) $
- $ 1 - tgh^2(x) = sech^2(x) $

= Módulo de um número real
== Definição algébrica
- Modulo de um escalar $x in RR$ é definido como: $ ||x|| = sqrt(x^2) $

== Interpretação na reta real
- O modulo de um número real é sua distancia até o zero na reta real

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  set-style(
    axes: (
      y: (stroke: none, mark: none),
      shared-zero: false
    ),
  )

  plot.plot(
    size: (10, 2),
    x-tick-step: 1,
    y-tick-step: none,
    x-min: -5,
    x-max: 5,
    y-min: -1,
    y-max: 1,
    x-label: [$ RR $],
    y-label: none,
    axis-style: "school-book", {
      plot.add(((0,0),))

      plot.annotate({
        line((0,0.3), (3,0.3), stroke: (paint: blue, thickness: 3pt), mark: (end: ">"))
        line((0,0.3), (-3,0.3), stroke: (paint: red, thickness: 3pt), mark: (end: ">"))

        line((3,-0.7), (0,-0.7), stroke: (paint: green, thickness: 3pt), mark: (end: ">"))
        line((-3,-0.7), (0,-0.7), stroke: (paint: green, thickness: 3pt), mark: (end: ">"))

        content((1.5, 0.6), [$+3$])
        content((-1.5, 0.6), [$-3$])

        content((1.5, -1.2), [$||+3|| = 3$])
        content((-1.5, -1.2), [$||-3|| = 3$])
      })
    }
  )
})

== Propriedades
- Se $alpha in RR$ com $alpha > 0$

  + $|x| < alpha => -alpha<x<alpha$

  + $|x| > alpha => x > alpha$ ou $-x > alpha$

  + $|a b| = |a| |b| forall a,b in RR$

  + $(|a|)/(|b|) = |a/b| forall a,b in RR$ com $b != 0$

  + $|a + b| <= |a| + |b|$

  + $|a - b| <= |a| + |b|$

  + $|a| - |b| <= |a -  b|$.

= Limites
Dada a função $f(x) = x^2$, seus valores são representados na tabela:

#let count = 18
#let nums = range(2, count, step: 2)

#align(center, table(
  columns: calc.floor((count / 2)),
  inset: 6pt,
  align(horizon, $ x $), ..nums.map(n => $ 1/#n $),
  align(horizon, $ f(x) $), ..nums.map(n => $ 1/#calc.pow(n, 2) $)
))

Como o valor de $f(x)$ se aproxima de $0$ conforme o valor de $x$ também se aproxima se zero, dizemos que o limite de $f(x)$ quando x tende a $0$ é zero, notação $ lim_(x->0) f(x) = 0 $

== Limites laterais
=== Definição
Limites laterais são limites em que a aproximação de um valor é definida a partir de números maiores os menores, chamadas respectivamentes de, aproximação pela direita e aproximação pela esquerda.

#pagebreak()

Notação:
- Aproximação pela direita (começando de um número maior) $ lim_(x->a^+) f(x) = L $ $ "lê-se, o limite de" f(x) "quando" x "tende a" a "pela direita é igual a" L $
- Aproximação pela esquerda (começando por um número menor) $ lim_(x->a^-) f(x) = L $ $ "lê-se, o limite de" f(x) "quando" x "tende a" a "pela esquerda é igual a" L $

=== Condição de existência dos limites
Para um limite $lim_(x->a)f(x)$ existir, é necessário que os limites laterais coincidam em um valor *finito* (tecnicamente falando se o limite resultar em $infinity$ ou $-infinity$ o limite não existe, estamos apenas estudando o comportamento de crescimento da função). Portanto, para $ lim_(x->a)f(x) = L $ então $ lim_(x->a^-) f(x) = lim_(x->a^+) f(x) = L $
caso contrário, o limite não existe.

=== Exemplo gráfico
#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  let f(x) = (calc.cos(x) / 4) + 0.6
  let g(x) = -(calc.sin(x) / 2) + 1

  plot.plot(
    axis-style:"school-book",
    size: (7, 6),
    x-tick-step: none,
    y-tick-step: none,
    x-ticks: ((3.14, $2$),),
    y-ticks: ((f(3.14), $4$), (g(3.14), $8$)),
    x-min: 0,
    y-min: 1,
    x-max: 6.28,
    y-max: 1,
    {
      plot.annotate({
        line((3.14, 0), (3.14, 2), stroke: (dash: "dashed"))
        line((6.28, f(3.14)), (0, f(3.14)), stroke: (dash: "dashed"))
        line((6.28, g(3.14)), (0, g(3.14)), stroke: (dash: "dashed"))
      })

      plot.add(x => f(x), domain: (0, 3.14))
      plot.add(x => -(calc.sin(x)/2)+1, domain: (3.14, 6.28), style: (stroke: blue), label: [$f(x)$])
      plot.add(((3.14, f(3.14)),), mark: "o", mark-style: (stroke: blue))
      plot.add(((3.14, g(3.14)),), mark: "o", mark-style: (stroke: blue))
    }
  )
})

Neste exemplo, o limite de $f(x)$ quando $x -> 2$ não existe, pois os limites laterais divergem. Perceba que quando o valor se aproxima de $x$ se aproxima de $2$ pela direita, o valor de $f(x)$ se aproxima de $8$, ou seja, $ lim_(x->2^+)f(x) = 8 $ Já quando o valor de $x$ se aproxima de $2$ pela esquerda, o valor de $f(x)$ se aproxima de $4$, ou seja, $ lim_(x->2^-) = 4 $ 

== Limites infinitos
Limites infinitos são limites em que não é possível encontrar um valor *finito* como resultado, porém, é possível analisar o comportamento da função utilizando a noção de limites.

=== Exemplos gráfico
#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(
    axis-style:"school-book",
    size: (7, 7),
    x-tick-step: none,
    y-tick-step: none,
    x-min: -5,
    y-min: -0.1,
    x-max: 5,
    y-max: 5,
    {
      plot.add(x => 1 / calc.pow(x, 2), domain: (-5, 5), samples: 200, label: $ f(x) = 1/x^2 $)
    }
  )
})

Observando o gráfico da função anterior, é perceptivel que a função cresce indefinidamente tanto quando o valor de $x$ se aproxima de zero pela esquerda, quanto pela aproximação pela direita, isso significa dizer que $ lim_(x->0^+)f(x) = lim_(x->0^-)f(x) = infinity $ Logo $ lim_(x->0) f(x) = infinity $

Apesar de ser escrito que o limite é igual a $infinity$, isso não significa que o limite existe, apenas descreve o valor da função
#pagebreak()
Exemplo 2:
#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(
    axis-style:"school-book",
    size: (7, 7),
    x-tick-step: none,
    y-tick-step: none,
    x-min: -5,
    y-min: -5,
    x-max: 5,
    y-max: 5,
    {
      plot.add(x => 1 / x, domain: (0.0001, 5), samples: 200, label: $ f(x) = 1/x $, style: (stroke: green))
      plot.add(x => 1 / x, domain: (-5, -0.0001), samples: 200, style: (stroke: green))
    }
  )
})

Observando o gráfico da função anterior, é perceptivel que a função cresce indefinidamente quando o valor de $x$ se aproxima de zero pela direita, ou seja, $ lim_(x->0^+)f(x) = infinity $ porém, quando o valor de $x$ se aproxima de zero pela esquerda a função decresce idefinidamente, logo, $ lim_(x->0^-)f(x) = -infinity $ Portanto, $lim_(x->0)f(x)$ não existe, pois os limites laterais divergem

== Definição formal (Epsilon-Delta)
- Seja a função $f(x)$ definida em um intervalo aberto $I$, contendo o valor $a$, execeto somente o próprio $a$. Dizemos que o limite de $f(x)$ quando $x$ se aproxima de $a$ é $L$.

$ lim_(x->a)f(x) = L "se para todo" epsilon > 0 "existir um" delta > 0 "tal que" $ $ |f(x) - L| < epsilon  "sempre que"  0<|x-a|<delta $

Traduzindo, o limite de $f(x)$ com $x -> a$ ($x$ tendendo a $a$) vai ser igual a $L$ se, para todo número $epsilon > 0$ dado, existir um outro número $delta > 0$ tal que a distância de $f(x)$ até $L$ seja menor que o número $epsilon$ sempre que a distância de $x$ até o número $a$ for maior que $zero$ e menor que $delta$

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(
    axis-style:"school-book",
    size: (10, 10),
    x-tick-step: none,
    y-tick-step: none,
    x-ticks: ((1, [$a$]), (0.5, [$x_0$]), (1.5, [$x_1$])),
    y-ticks: ((2, [$L$]), (1.5, [$y_0$]), (2.5, [$y_1$])),
    x-min: -1,
    y-min: -1,
    x-max: 4,
    y-max: 4,
    {
      plot.add(x => (calc.pow(x, 2) - 1)/(x - 1), domain: (-1, 0.99))
      plot.add(x => (calc.pow(x, 2) - 1)/(x - 1), domain: (1.01, 4), style: (stroke: blue))
      plot.add(((1, 2),), mark: "o", mark-style: (stroke: blue))

      plot.annotate({
        line((0, 2), (0.95, 2), stroke: (dash: "dashed"))
        line((1, 0), (1, 1.95), stroke: (dash: "dashed"))
        line((1, 0), (1, 1.95), stroke: (dash: "dashed"))
        line((1, 0.2), (0.5, 0.2), mark: (start: ">", end: ">", scale: 0.3, fill: black))
        line((1, 0.2), (1.5, 0.2), mark: (start: ">", end: ">", scale: 0.3, fill: black))
        content((0.75, 0.3), [$delta$])
        content((1.25, 0.3), [$delta$])

        line((0.2, 2), (0.2, 1.5), mark: (start: ">", end: ">", scale: 0.3, fill: black))
        line((0.2, 2), (0.2, 2.5), mark: (start: ">", end: ">", scale: 0.3, fill: black))
        content((0.3, 1.77), [$epsilon$])
        content((0.3, 2.28), [$epsilon$])
      })
    }
  )
})

=== Método para provar limites utilizando Epsilon-Delta
Para provarmos qualquer limite utilizando a definição formal, é preciso encontrar uma relação entre $epsilon "e" delta$. Para isso é preciso lembrar das seguintes relações $|f(x) - L| < epsilon "e" 0 < |x - a| < delta$ quando $lim_(x->a)f(x) = L$.

Vamos utilizar o seguinte limite para exemplo:

Sendo a função $ f(x) = x^2 $ e $ lim_(x->2)f(x) = 4 $
Substituindo a função no limite temos que $ lim_(x->2)x^2=4 $
Portando, aplicando a definição as relações $ |f(x) - L| < epsilon "e" 0< |x-a| < delta$ quando $lim_(x->a)f(x) = L $.

Obtemos as seguintes inequações
$ |f(x) - L| < epsilon => |x^2 - 4| < epsilon " (I)" $
e
$ 0 < |x - a| < delta => 0 < |x - 2| < delta " (II)" $
Agora a ideia é encontrar uma relação entre $"(I)"$ e $"(II)"$, partindo da inequação $"(I)"$ geralmente é mais fácil.

Podemos fatorar $"(I)"$ $ |x^2 - 4| < epsilon <=> |x^2 - 2^2| < epsilon <=> |x-2| dot |x+2| < epsilon " (III)" $
Perceba que que encontramos uma expressão do formato $ |x-2| dot alpha < epsilon  "(IV)" $ onde $alpha = |x+2|$, e a expressão $"(II)"$ possui este mesmo formato, exceto por $alpha = 1$ e o outro lado da desigualdade _menor que_ ser $epsilon$ e não $delta$. Portando acabamos de encontrar uma relação entre ambas as desigualdades.

Mas ainda temos um problema, a fatoração de $"(I)"$ não saiu de forma linear, ou seja, o valor $alpha$ que encontramos ainda depende de $x$, portanto precisamos *limitar* o valor de $delta$ para um valor seguro ($delta <= 1$), pegando a equação $"(II)"$ e limitando $delta <= 1$ obtemos que $ |x-2| < 1 $ abrindo o modulo ficamos com $ -1 < x - 2 < 1 $ desenvolvendo a inequação chegamos no seguinte intervalo para $x$ $ 1 < x < 3 $ Agora podemos transformar esta ultima equação no $alpha$ encontrado na $"(III)"$, somando $2$ de todos os lados da equação $ 3 < x + 2< 5 $ perceba que $alpha = |x + 2|$, logo agora $alpha = |5| = 5$ portanto podemos substituir alpha na equação $"(IV)"$ resultando em $ |x-2| dot 5 < epsilon $ portanto $ |x-2| < epsilon/5 $

Por fim, perceba que temos $|x - 2| < delta$ e $|x-2| < epsilon/5$, logo, o valor de $delta$, pode ser o menor entre $1$ escolhido por nós, ou $epsilon/5$, escrevemos que $delta = min{1, epsilon/5}$

#pagebreak()

== Propriedades básicas de limites
Se $lim_(x->a) f(x) "e" lim_(x->a) g(x)$ existem e $c$ é um número qualquer então:
+ Limite da soma $ lim_(x->a)[f(x) + g(x)] = lim_(x->a)f(x) + lim_(x->a)g(x) $

+ Limite de uma constante $ lim_(x->a)c = c $

+ Limite do produto $ lim_(x->a)f(x) dot g(x) = lim_(x->a)f(x) dot lim_(x->a)g(x) $

+ Limite do quociente $ lim_(x->a)f(x)/g(x) = (lim_(x->a)f(x))/(lim_(x->a)g(x)) ", se" lim_(x->a)g(x) != 0 $

+ Limite da exponenciação $ lim_(x->a)[f(x)]^n = [lim_(x->a)f(x)]^n ", " n in NN $

+ Limite da radiciação $ lim_(x->a)root(n, f(x)) = root(n, lim_(x->a)f(x)) $ $ n in NN, "desde que" n > 0 "e quando" n = 2k, k in ZZ "("n "é número par) então" lim_(x->a)f(x) > 0 $

+ Limite da logaritmação $ lim_(x->a)log_b [f(x)] = log_b [lim_(x->a)f(x)]," desde que," lim_(x->a)f(x) > 0 $

+ Limite do cosseno $ lim_(x->a)cos[f(x)] = cos(lim_(x->a)f(x)) $

+ Limite da exponencial natural: $ lim_(x->a) e^f(x) = e^(lim_(x->a)f(x)) $

+ Se $f(x) <= g(x)$ e o limite de $x -> a$ existe para ambas as funções então: $ lim_(x->a)f(x) <= lim_(x->a)g(x) $

+ Teorema do confronto: Se $f(x) <= g(x) <= h(x)$ quando $x -> a$ e $ lim_(x->a)f(x) = lim_(x->a)h(x) = L $ então $ lim_(x->a)g(x) = L $


== Limites no infinito
Limites infinitos são limites em que $x -> infinity$ ou $x -> -infinity$, analisando o comportamennto da função quando o $x$ cresce ou decresce indefinidamente.

=== Exemplo Gráfico
#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(
    axis-style:"school-book",
    size: (12, 6),
    x-tick-step: none,
    y-tick-step: none,
    x-ticks: (1,),
    y-ticks: (1,),
    x-min: -10,
    y-min: -1.25,
    x-max: 10,
    y-max: 2,
    {
      plot.add(x => (calc.pow(x, 2) - 1)/(calc.pow(x, 2) + 1), domain: (-10, 10), samples: 200, label: $ f(x) = (x^2 - 1)/(x^2 + 1) $, style: (stroke: green))
      plot.add(x => 1, domain: (-10, 10), label: $ y = 1 $, style: (stroke: purple))
    }
  )
})

Nesse caso, $lim_(x->infinity)f(x) = 1$, pois ambos os limites laterais são iguais a $1$, gerando a assíntota horizonta $y=1$

=== Limites genéricos importantes
Considere os limites $lim_(x->infinity)f(x) = L_1 "e" lim_(x->infinity)g(x) = L_2 "e" n >0 in ZZ$

+ $ lim_(x->infinity) f(x) plus.minus g(x) = L_1 plus.minus L_2 $

+ $ lim_(x->infinity)f(x) dot g(x) = L_1 dot L_2 $

+ $ lim_(x->infinity)f(x)/g(x) = L_1/L_2 $

+ $ lim_(x->infinity) 1/(x^n) = 0 $

+ $ lim_(x->-infinity) 1/(x^n) = 0 $

+ $ lim_(x->plus.minus infinity) = plus.minus infinity $

+ $ lim_(x->0^+)1/x^n = infinity $

+ $ lim_(x->0^-)1/x^n = cases(
  infinity", se" n = 2k"," k in ZZ,
  -infinity", se" n = 2k + 1"," k in ZZ
) $

+ $ lim_(x->0)1/x^n, " se" n = 2k"," k in ZZ $

=== Propriedades do infinito
Sejam $lim_(x->a)f(x) = K$ e $lim_(x->a)g(x) = S$
+ Se $K = S = plus.minus infinity$ então $ lim_(x->a)(f(x) + g(x)) = plus.minus infinity plus.minus infinity = plus.minus infinity$

+ Se $K = S = infinity$, então $lim_(x->a)f(x)-g(x)$ é indeterminado

+ Se $S = infinity "e" K in RR_+$ então $lim_(x->a)f(x)g(x) = lim_(x->a)f(x) + g(x) = infinity$

+ Se $S = infinity$ e $K in RR_-$ então $ lim_(x->a)f(x)g(x) = -infinity$

+ Se $K = S = infinity$ então $lim_(x->a)f(x)g(x) = infinity$.

+ Se $K = S = -infinity$, então $lim_(x->a)f(x)g(x) = infinity$

+ Se $K = -infinity "e" S = infinity$ então $lim_(x->a)f(x)g(x) = - infinity$

+ Se $S = K = plus.minus infinity$ então $lim_(x->a)f(x)/g(x)$ é indeterminado. Se $S = K = 0$ então $lim_(x->a)f(x)/g(x)$ é indeterminado

+ Se $K = 0$ e $S = plus.minus infinity$, então $lim_(x->a)f(x)g(x) = 0 times (plus.minus infinity)$ é identerminado

== Assíntotas
=== Verticais
A reta $x=a$ é assíntota do gráfico de $y = f(x)$, se pelo menos uma das seguintes afirmações forem verdadeiras
+ $ lim_(x->a^+) = +infinity $

+ $ lim_(x->a^-) = +infinity $

+ $ lim_(x->a^+) = -infinity $

+ $ lim_(x->a^-) = -infinity $

=== Exemplo Gráfico

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(
  axis-style: "school-book",
  size: (6,6),
  x-tick-step: none,
  y-tick-step: none,
  {
    plot.add(x => 1 / x, domain: (-5, -0.1), samples: 200, label: $f(x) = 1 / x$)
    plot.add(x => 1 / x, domain: (0.1, 5), samples: 200, style: (stroke: blue))
    plot.add(((0, -10), (0, 10)), label: $x = 0$)
  })
})

A reta $x = 0$ é a assíntota vertical de $f(x)$ pois $lim_(x->0^+)1/x = 0 = lim_(x->0^-)1/x$

== Horizontal
A reta $y=b$ é a assíntota horizontal do gráfico de $y=f(x)$, se pelo menos uma das seguintes afirmações forem verdadeiras
+ $ lim_(x->+infinity)f(x) = b $

+ $ lim_(x->-infinity)f(x) = b $

=== Exemplo gŕafico
#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(
  axis-style: "school-book",
  size: (6,6),
  x-tick-step: none,
  y-tick-step: none,
  {
    plot.add(x => 1 / x, domain: (-5, -0.1), samples: 200, label: $f(x) = 1 / x$)
    plot.add(x => 1 / x, domain: (0.1, 5), samples: 200, style: (stroke: blue))
    plot.add(((0, -10), (0, 10)), label: $x = 0$)
  })
})
