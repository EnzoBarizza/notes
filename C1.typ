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
#let sen = math.op("sen")
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
