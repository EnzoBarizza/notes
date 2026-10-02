#import "./lib/notes.typ": *
#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4"
#show: note-style.with(aluno: "Enzo Barizza Leal")

#begin-note(aula: "", materia: "Geometria Analítica e Algebra Linear", professor: "Jean Venato Santos")

= Vetores
== Definições gerais
=== Vetor 
- *Vetores* são segmentos orientados determinados por dois pontos, o primeiro chamado de origem e o segundo extremidade, notação $arrow(A B)$.

#cetz.canvas({
  import cetz.draw: *
  scale(1)
  line((0,0), (3,3), mark: (end: ")>"))

  circle((0,0), radius: 0.02, fill: black)
  circle((3,3), radius: 0.02, fill: black)

  content((0.0, -0.3), [$A$])
  content((3.1, 2.7), [$B$])
  content((1.8, 1.1), [$arrow(A B)$])
})

  *Obs*:

  - Vetores com extremidades iguais as origens são os vetores nulos, notação $arrow(0)$.

  - Se $A$ é a origem e $B$ a extremidade, e $A != B$, então $arrow(A B) != arrow(B A)$ e são vetores opostos um do outro, que é a mesma coisa que dizer $arrow(B A) = -arrow(A B)$.


=== Segmentos equipolentes
- Dois vetores são *equipolentes* quando possuem mesma norma (modulo ou magnitude), direção e sentido, notação $arrow(A B) ~ arrow(C D)$.

- Um vetor $arrow(v)$ determinado por um segmento orientado $A B$ qualquer, pertence ao conjunto que contem todos os segmentos equipolentes a $A B$, simplificando, $arrow(v)$ = $arrow(A B)$. De maneira mais formal é dizer que $ arrow(v) = {X Y ; X Y ~ A B} $

=== Representante de um vetor
- Todo segmento equipolente a um segmento $A B$ é chamado de *representante* do vetor $arrow(A B)$.

=== Vetor oposto
- *Vetor oposto* é o aquele que dado um vetor $arrow(u)$, possui mesma norma, direção e sentido oposto, denotado por $-arrow(u)$.

=== Vetores coplanares
- Dois vetores são *coplanares* quando podem ser representados em um mesmo plano, ou seja, são sempre coplanares, pois dois vetores sempre definem um plano.

#pagebreak()

*Proposição:*
- Dados $arrow(u)$ e $arrow(v)$, dois vetores não nulos, $arrow(u) parallel arrow(v) <=> exists alpha in RR | arrow(u)=alpha arrow(v)$, simplificando, dizer que dois vetores são paralelos, significa dizer que existe pelo menos um escalar $alpha$ que quando multiplica $arrow(v)$ resulta em $arrow(u)$

*Def:*
  - Sendo dois vetores $arrow(u)_1, arrow(u)_2$ não colineares (não paralelos) e $arrow(v)$ coplanar com $arrow(u)_1$ e $arrow(u)_2$ então existem únicos escalares $alpha_1$ e $alpha_2 in RR$ que definem o vetor $ arrow(v) = alpha_1 arrow(u)_1 + alpha_2 arrow(u)_2 $ Simplificando, com dois vetores coplanares é possível formar qualquer outro vetor coplanar a eles, utilizando os escalares corretos.

    *Consequências:*
      - Ao representar os vetores $arrow(u)_1$ e $arrow(u)_2$ com mesma origem $O$ é definido o conjunto $B = {arrow(u)_1,arrow(u)_2}$ chamado de base do plano que passa por $O$ e é paralelo aos vetores.
      - Sendo o vetor $arrow(v)$ paralelo ao plano gerado pelos vetores $arrow(u)_1$ e $arrow(u)_2$, e como vale a seguinte igualdade mostrada acima $arrow(v) = alpha_1 arrow(u)_1 + alpha_2 arrow(u)_2$, logo, a base $B$ possui $arrow(u)_1$ e $arrow(u)_2$ como coordenadas, então é possivel escrever o vetor $arrow(v)$ utilizando a base $B$ da seguinte forma $arrow(v) = (alpha_1, alpha_2)$ ou $arrow(v)_B = (alpha_1, alpha_2)$
      - No plano $RR^2$ (plano cartesiano de duas dimensões) se utiliza a base $C = {arrow(i), arrow(j)}$, onde $arrow(i)$ e $arrow(j)$ são representados com origem em $O$, e com extremidades em $(1, 0)$ e $(0,1)$, respectivamente. $C$ é chamado de base *canônica* de $RR^2$
      - Considerada as consequências acima, a seguinte propriedade é gerada: Existem únicos $x$ e $y$ que formam o vetor $arrow(v) = x arrow(i) + y arrow(j)$. A abscissa $x$ e a ordenada $y$ são chamadas de componentes do vetor $arrow(v)$ na base canônica, logo, podemos omitir $arrow(i)$ e $arrow(j)$, $arrow(v) = (x, y)$.

=== Igualdade de vetores
  - $arrow(u) = (x_1, y_1)$ e $arrow(v) = (x_2, y_2) => arrow(u) = arrow(v) <=> x_1 = x_2$ e $y_1 = y_2$

#pagebreak()

=== Vetor definido por dois pontos
- Dados dois pontos $A(x_1, y_1)$ e $B(x_2, y_2)$ vamos obter a coordenada do vetor $arrow(A B)$, ou seja, obter as coordenadas do ponto $P$ tal que $arrow(O P) = arrow(A B)$

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  let xt = ((1.5, [$x_1$]), (4, [$x_2$]))
  let yt = ((3.5, [$y_1$]), (1.5, [$y_2$]))

  plot.plot(size: (6,6), y-tick-step: none, y-ticks: yt, x-tick-step: none, x-ticks: xt, axis-style: "school-book", {
    plot.add(((0,0), (5, 5)), style: (stroke: none))
    plot.annotate(resize: false, {
      line((0,0), (1.5,4.5), mark: (end: ")>", fill: black))
      line((1.5,4.5), (4,1.5), mark: (end: ")>", fill: black))
      line((0,0), (4,1.5), mark: (end: ")>", fill: black))

      content((0.4, 2.3), [$arrow(O A)$])
      content((3.2, 3.2), [$arrow(O B)$])
      content((2.25, 0.4), [$arrow(A B)$])

      content((1.5,4.75), [$A$])
      content((4.25, 1.5), [$B$])
    })
  })
})
$arrow(O A) + arrow(A B) = arrow(O B) <=> arrow(A B) = arrow(O B) - arrow(O A) - (x_2, y_2) - (x_1, y_1)$ 

$therefore arrow(A B) = B - A <=> B = A + arrow(A B)$ (Lê-se que $arrow(A B)$ "transporta" $A$ em $B$)

=== Versores
- Um *versor* de um vetor é o vetor que possui mesma direção e sentido porém com norma igual a $1$
- O versor $arrow(v)$ de um vetor $arrow(u)$ qualquer pode ser calculado pela seguinte expressão: $ arrow(v) = (arrow(u))/(||arrow(u)||) $

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  plot.plot(size: (6,6), x-tick-step: none, y-tick-step: none, axis-style: "school-book", {
    plot.add(((0,0), (5,5)), style: (stroke: none))
    plot.annotate({
      line((0,0), (4, 4), stroke: black, mark: (end: ")>", fill: black))
      line((0,0), (4 / calc.sqrt(32), 4 / calc.sqrt(32)), stroke: blue, mark: (end: ")>", fill: blue))
      content((2.0,2.3), [$arrow(u)$])
      content(((4 / calc.sqrt(32)) - 0.5, 4 / (calc.sqrt(32)) - 0.3), [$arrow(v)$])
    })
  })
})

=== Ponto médio
- Dados dois pontos $A(x_1, y_1)$ e $B(x_2, y_2)$, o ponto médio de $A B$ é dado por $arrow(A M) = 1/2 A B = ((x_1 + x_2)/2, (y_1 + y_2)/2)$

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  let xt = ((1, [$x_1$]), (4, [$x_2$]), (2.5, [$(x_1 + x_2) / 2$]))
  let yt = ((1, [$y_1$]), (4, [$y_2$]), (2.5, [$(y_1 + y_2) / 2$]))

  plot.plot(size: (6,6), axis-style: "school-book", x-ticks: xt, y-ticks: yt, x-tick-step: none, y-tick-step: none, {
    plot.add(((0,0), (5, 5)), style: (stroke: none))
    plot.annotate({
      line((1, 1), (4, 4), mark: (end: ")>", fill: black))
      line((1, 1), (2.5, 2.5), mark: (end: ")>", fill: black))

      circle((1,1), radius: 0.02, fill: black)
      circle((2.5,2.5), radius: 0.02, fill: black)
      circle((4,4), radius: 0.02, fill: black)

      content((0.8, 1), [$A$])
      content((2.3, 2.6), [$M$])
      content((3.8, 4.1), [$B$])
    })
  })
})

=== Paralelismo de dois vetores
- Dois vetores $arrow(u) = (x_1, y_1)$ e $arrow(v) = (x_2, y_2)$ não nulos,$arrow(u) parallel arrow(v) <=> exists alpha in RR | arrow(u) = alpha arrow(v)$, isso significa que dois vetores só são paralelos se existir um escalar $alpha$ que quando multiplicado por um deles resulta no outro. Assim $ (x_1, y_1) = alpha (x_2, y_2) = (alpha x_2, alpha y_2) <=> x_1 = alpha x_2 and y_1 = alpha y_2 $

- *Obs:* $arrow(0)$ é considerado paralelo a qualquer vetor

=== Norma de um vetor
- Dado $arrow(u) = (x, y)$, norma é pitágoras: $||arrow(u)|| = sqrt(x^2 + y^2)$

=== Coordenadas de  vetores no $RR^3$
- Base canônica $C = {arrow(i), arrow(j), arrow(k)}$
- Dado um vetor $arrow(u)$ qualquer em $RR^3$ existem único $ alpha_1, alpha_2, alpha_3 in RR | arrow(u) = alpha_1 arrow(i) + alpha_2 arrow(j) + alpha_3 arrow(k) $

- Notações: Sendo $O = (0,0,0)$ a origem de $RR³$:
  - $arrow(u) + arrow(v) = (x_1+x_2, y_1+y_2, z_1+z_2)$
  - $alpha arrow(u) = alpha(x_1, y_1, z_1) = (alpha x_1, alpha y_1, alpha z_1)$
  - $arrow(u) parallel arrow(v) <=> exists alpha in RR; arrow(u) = alpha arrow(v) <=>(x_1, y_1, z_1) = alpha(x_2, y_2, z_2) <=> alpha = x_1/x_2 = y_1/y_2 = z_1/z_2$
- Componentes de $arrow(u)$ com origem $A(a_1, a_2, a_3)$ e extremidade $B(b_1, b_2, b_3)$ são dados por $arrow(u) = arrow(A B) = B - A = (b_1 - a_1, b_2 - a_2, b_3 - a_3)$
- Norma de vetor $arrow(u)=(u_1, u_2, u_3)$, $||arrow(u) = sqrt(u_1^2 + u_2^2 + u_3^2)$

== Operações com vetores
=== Soma de vetores
*Def.:* A soma de $arrow(u) + arrow(v)$ é definida como:
  + Pegue um representante de $A B$ do vetor $arrow(u)$
  + Pegue um representante de $B C$ de $arrow(v)$ com origem em $B$
  + $arrow(u) + arrow(v)$ é o vetor representado pelo segmento $A C$

#cetz.canvas({
  import cetz.draw: *

  line((0,0), (2,2), mark: (end: ")>", fill: black))
  line((2,2), (5, 2), mark: (end: ")>", fill:  black))
  line((0,0), (5,2), mark: (end: ")>", fill: blue), stroke: blue)

  content((0.8, 1.2), [$arrow(u)$])
  content((3.5, 2.3), [$arrow(v)$])
  content((2.8, 0.7), [$arrow(u) + arrow(v)$])

  content((-0.2, 0), [$A$])
  content((5.2, 2), [$B$])
})

*Def:* A diferença, $arrow(u) - arrow(v)$ é a mesma coisa que $arrow(u) + (-arrow(v))$

=== Multiplicação ou produto por escalar

*Def:*
- Sendo $arrow(u)$ um vetor e $alpha in RR$ um escalar, o vetor produto pelo escalar $alpha$ é $alpha arrow(u)$, seguindo as seguintes propriedades:
  - $||alpha arrow(u)|| := |alpha| times ||arrow(u)||$
  - Tem mesma direção de $arrow(u)$ ($alpha arrow(u) parallel arrow(u)$)
  - Mesmo sentido se $alpha > 0$ e sentido oposto se $alpha < 0$.

=== Propriedades de soma e produto por escalar
- Dados os vetores $arrow(u), arrow(v), arrow(w)$ e escalares $alpha, beta in RR$, valem as seguintes propriedades:
- Soma:
  + $(arrow(u) + arrow(v)) + arrow(w) = arrow(u) + (arrow(v) + arrow(w))$ (Associatividade)
  + $arrow(u) + arrow(v) = arrow(v) + arrow(u)$ (Comutatividade)
  + Existe um unico elemento neutro $arrow(0)$ tal que $arrow(u) + arrow(0) = arrow(u), forall arrow(u)$
  + $exists! -arrow(u) | arrow(u) + (-arrow(u)) = (-arrow(u)) + arrow(u) = arrow(0), forall arrow(u)$
- Produto:
  + $(alpha beta)arrow(u) = alpha(beta arrow(u)) = beta(alpha arrow(u))$ (Associatividade)
  + Existe um unico elemento neutro tal que $1 times arrow(u) = arrow(u)$
  + $(alpha + beta) arrow(u) = alpha arrow(u) + beta arrow(u)$ (Distributiva)
  + $alpha(arrow(u) + arrow(v)) = alpha arrow(u) + alpha arrow(v)$ (Distributiva)

=== Produto escalar ou produto interno
- Produto escalar ou produto interno de dois vetores $arrow(u) = (x_1, y_1, z_1)$ e $arrow(v) = (x_2, y_2, z_2)$ é representado como $arrow(u) dot arrow(v)$ ou $chevron.l arrow(u), arrow(v) chevron.r$, é um número real ($arrow(u) dot arrow(v) in RR$) calculado pela expressão $arrow(v) dot arrow(u) = x_1x_2 + y_1y_2 + z_1z_2$
- *Propriedades:* Para quaisquer $arrow(u), arrow(v), arrow(w) in RR^3$ e $alpha in RR$
  + $arrow(0) dot arrow(u) = 0$
  + $arrow(u) dot arrow(v) = arrow(v) dot arrow(u)$
  + $arrow(u) dot (arrow(v) + arrow(w)) = arrow(u) arrow(v) + arrow(u) arrow(w)$
  + $alpha(arrow(u) dot arrow(v)) = (alpha arrow(u)) arrow(v) = arrow(u)(alpha arrow(v))$
  + $arrow(u) dot arrow(u) > 0$, se $arrow(u) != 0$ e $arrow(u) dot arrow(u) = 0$ se $arrow(u) = 0$
  + $arrow(u) dot arrow(u) = ||arrow(u)||^2 = sqrt(arrow(u) dot arrow(u))$

=== Produto vetorial
- Dados $arrow(u) = (x_1, y_1, z_1)$ e $arrow(v) = (x_2, y_2, z_2) => arrow(u) times arrow(v) = mat(arrow(i), arrow(j), arrow(k); x_1, y_1, z_1; x_2, y_2, z_2, delim: "|")$
- *Propriedades Básicas:*
  - $arrow(u) times arrow(v) = -(arrow(v) times arrow(u))$
  - $arrow(u) times arrow(v) = arrow(0) <=> arrow(u) parallel arrow(v)$
  - $arrow(u) times (arrow(v) + arrow(w)) = arrow(u) times arrow(v) + arrow(u) times arrow(w)$
  - $alpha(arrow(u) times arrow(v)) = (alpha arrow(u)) times arrow(v) = arrow(u) times (alpha arrow(v))$
  - $arrow(u) dot (arrow(v) times arrow(w)) = (arrow(u) times arrow(v)) dot arrow(w)$ (Produto misto)
  - Direção: $chevron.l arrow(u) times arrow(v), arrow(u) chevron.r = 0$, então $arrow(u) times arrow(v) parallel arrow(u)$ e $chevron.l arrow(u) times arrow(v), arrow(v) chevron.r = 0$, então $arrow(u) times arrow(v) parallel arrow(v)$
  - Se $ chevron.l arrow(u) times arrow(v), arrow(w) chevron.r = 0$, então $arrow(u) times arrow(v) perp arrow(w) $
- Sentido de $arrow(u) times arrow(v)$:
  - Sendo $theta$ o ângulo entre $arrow(u)$ e $arrow(v)$ suponhamos que $arrow(u)$, sofre uma rotação de ângulo $theta$ até coincidir com $arrow(v)$. Se os dedos dobrados no sentido da rotação, então o polegar estendido indicar o sentido $arrow(u) times arrow(v)$
- Norma de $arrow(u) times arrow(v)$:
  - $||arrow(u) times arrow(v)|| = ||arrow(u)||||arrow(v)||sin(theta)$
- Identidade de Lagrange:
  - $||arrow(u) times arrow(v)||^2 = ||arrow(u)||^2||arrow(v)||^2 - (arrow(u) dot arrow(v))^2$
- Obs: Produto vetorial não é associativo $(arrow(i) times arrow(j)) times arrow(j) != arrow(i) times (arrow(j) times arrow(j))$

=== Produto misto
- Dados 3 vetores $arrow(u) = (x_1, y_1 ,z_1)$, $arrow(v) = (x_2, y_2, z_2)$ e $arrow(w) = (x_3, y_3, z_3)$ em $RR^3$, o produto misto de $arrow(u), arrow(v), arrow(w)$, nesta ordem, é definido por:
$ (arrow(u), arrow(v), arrow(w)) = arrow(u) dot (arrow(v) times arrow(w)) = mat(delim: "|", x_1, y_1, z_1; x_2, y_2, z_2; x_3, y_3, z_3) $

- Propriedades
  + $(arrow(u), arrow(v), arrow(w))$ muda de sinal quando se troca a posição de dois vetores: $ (arrow(u), arrow(v), arrow(w)) = -(arrow(u), arrow(w), arrow(v)) $
  + Mantem o sinal quando é realizada duas trocas
  + $(arrow(u) + arrow(x), arrow(v), arrow(w)) = (arrow(u), arrow(v), arrow(w)) + (arrow(x), arrow(v), arrow(w))$, a soma pode estar em qualquer termo
  + $(alpha arrow(u), arrow(v), arrow(w)) = (arrow(u), alpha arrow(v), arrow(w)) = (arrow(u), arrow(v), alpha arrow(w)) = alpha(arrow(u), arrow(v), arrow(w))$
  + $(arrow(u), arrow(v), arrow(w)) = 0 <=> arrow(u), arrow(v) $ e $ arrow(w)$ são coplanares

- Interpretação geométrica:
  - O modulo do produto misto calcula a área do paralelepípedo definido pelos três vetores.

  - $V_"prisma" = V_"paralelepípedo"/2$

  - $V_"tetraedro" = V_"prisma"/3 = V_"paralelepípedo"/6$


== Angulo entre vetores
- O angulo de dois vetores não nulos $arrow(u)$ e $arrow(v)$ é o angulo $theta$ formado pelas semi-retas $O A$ e $O B$ de mesma origem $O$, onde $arrow(u) = arrow(O A)$ e $arrow(v) = arrow(O B)$ e $0 <= theta <= pi$

#cetz.canvas({
  import cetz.draw: *
  import cetz.angle: *
  
  line((0,0), (2,2), mark: (end: ")>", fill: black))
  line((3, 2), (6,1), mark: (end: ")>", fill: black))

  line((0, -2), (2, 0), mark: (end: ")>", fill: black), name: "a")
  line((0, -2), (3, -3), mark: (end: ")>", fill: black), name: "b")

  angle("b.start", "b.end", "a.end", label: $theta$, radius: 25pt)

  content((0.6, 1.2), [$arrow(u)$])
  content((4.7, 1.8), [$arrow(v)$])
  content((-0.2, -2), [$O$])
  content((2.2, 0), [$A$])
  content((3.2, -3), [$B$])
})

- Obs: se $arrow(u) parallel arrow(v)$ e $arrow(u)$ e $arrow(v)$ tem mesmo sentido $theta = 0$, caso sentido opostos $theta = pi$

=== Relação entre produto escalar e angulo entre vetores
- Se $arrow(u) != 0$ e $arrow(v) != 0$ e $theta$ é o angulo entre $arrow(u)$ e $arrow(v)$, formado quando ambos possuem a mesma origem, então $arrow(u) dot arrow(v) = ||arrow(u)|| ||arrow(v)||cos(theta)$

=== Desigualdades relevantes
+ $|arrow(u) dot arrow(v)| <= ||arrow(u)|| ||arrow(v)||$
+ $||arrow(u) + arrow(v)|| <= ||arrow(u)|| + ||arrow(v)||$

== Projeção de um vetor sobre outro
- Sejam $arrow(u)$ e $arrow(v)$ vetores não nulos, a projeção de $arrow(u)$ sobre $arrow(v)$ é denotada por $arrow(w) = "proj"_arrow(v)^arrow(u)$

#cetz.canvas({
  import cetz.draw: *
  import cetz.angle: *

  line((0, 0), (2, 0), mark: (end: ")>", fill: blue), stroke: blue)
  line((2, 0), (4, 0), mark: (end: ")>", fill: black), name: "a")
  line((0, 0), (2, 2), mark: (end: ")>", fill: black))
  line((2, 0), (2, 2), mark: (end: ")>", fill: black), stroke: (dash: "dashed"), name: "b")

  right-angle("a.start", "a.end", "b.end", radius: 0.3cm)

  content((1, -0.2), [$arrow(w)$])
  content((2.7, 1), [$arrow(u) - arrow(w)$])
  content((0.9, 1.2), [$arrow(u)$])
  content((3, -0.2), [$arrow(v)$])
})
- Sendo $arrow(w) parallel arrow(v)$, existe $alpha in RR$ tal que $arrow(w) = alpha arrow(v)$
- $arrow(u) - arrow(w) perp arrow(v)$ onde $chevron.l arrow(u) - arrow(v), arrow(v) chevron.r = 0 => (arrow(u) dot arrow(v))/(||arrow(v)||^2) = alpha$
- $"proj"^arrow(u)_arrow(v) = (arrow(u) dot arrow(v))/(||arrow(v)||^2) dot arrow(v)$
