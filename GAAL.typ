#import "./lib/notes.typ": *
#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4"
#show: note-style.with(aluno: "Enzo Barizza Leal")

#begin-note(aula: "", materia: "Geometria Analítica e Algebra Linear", professor: "Jean Venato Santos")

#let arcsen = math.op("arcsen")

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

#pagebreak()

= Retas
Dados uma reta $r in RR^2 "ou" RR^3$, um ponto $A(x_0, y_0, z_0) in r$ e um vetor $arrow(v) = (a,b,c)$ paralelo a $r$. Um ponto qualquer $P(x, y, z)$ só pertencence a reta $r$ se e somente se $arrow(A P) parallel arrow(v)$ (vetor $arrow(A P)$ paralelo a vetor $arrow(v)$). Portanto pelas propriedades de vetores paralelos $arrow(A P) = t arrow(v) <=> P = A + t arrow(v)$ 

== Equação vetorial da reta

$ r: P = A + t arrow(v) $

$ <=> $ 

$ r: (x,y,z) = (x_0, y_0, z_0) + t (a,b,c) $

A equação acima é chamada de *equação vetorial da reta $r$*, $P$ é um ponto qualquer pertencente a reta, $A$ é um ponto da reta, o vetor $arrow(v)$ é chamado de *vetor diretor* e $t$ é chamado de *parâmetro*.

== Equações paramétricas da reta
Dada uma reta $ r: (x,y,z) = (x_0, y_0, z_0) + t(a,b,c); t in RR $

$ r: cases(x = x_0 + a t, y = y_0 + b t, z = z_0 + c t) $

Essas três equações são as *equações paramétricas* da reta $r$

== Equações simétricas ou normais da reta
Dada uma reta $ r: (x,y,z) = (x_0, y_0, z_0) + t(a,b,c); t in RR $
Se $a,b,c != 0$ então
$ r: t = (x-x_0)/a = (y-y_0)/b = (z-z_0)/c $

== Equações reduzidas da reta
A partir das equações simétricas, isolando duas variaveis em função de uma terceira, por $x$, tiramos que
$ cases(y = m x + n, z = p x + q) => cases(y = a/b x - a/b x_0 + y_0, z = c/a x - c/a x_0 + z_0) $
Sendo
$ m = a/b ", " p = c/a ", " n = y_0 - b/a x_0 " e " q = z_0 - c/a x_0 $

== Ângulos entre duas retas
O ângulo $theta$ entre duas retas $r_1$ e $r_2$, de vetores diretores $arrow(v_1), arrow(v_2)$ respectivamente, é o menor ângulo entre os vetores diretores das retas, ou seja $0 degree<=theta<=90 degree$, o ângulo entre vetores pode ser calculado por $ arccos((|arrow(v_1) dot arrow(v_2)|)/(||arrow(v_1)|| ||arrow(v_2)||)) $

== Posição relativa entre duas retas
As retas $r_1: (x,y,z) = A_1 + t arrow(v_1)$ e $r_2: (x,y,z) = A_2 + s arrow(v_2)$ podem ser:
- Reversas, não situadas no mesmo plano, $(arrow(v_1), arrow(v_2), arrow(A_1 A_2)) != 0$

- Coplanares, situadas no mesmo plano, $(arrow(v_1), arrow(v_2), arrow(A_1 A_2)) = 0$

- Concorrentes quando $arrow(v_1) parallel.not arrow(v_2) <=> arrow(v_1) times arrow(v_2) != 0$ e coplanares $(arrow(v_1), arrow(v_2), arrow(A_1 A_2)) = 0$. Neste casso $r_1 inter r_2 = {I}$ (As retas $r_1$ e $r_2$ se instersectão em apenas um ponto $I$)

- Paralelas quando $arrow(v_1) parallel arrow(v_2)$, neste caso $r_1 inter r_2 = emptyset$ ou $r_1 inter r_2 = r_1 "(Coincidentes)"$

= Planos

== Equação geral do plano
Sejam $A(x_0, y_0, z_0)$ um ponto de uma plano $pi in RR^3$ e $arrow(n) = (a,b,c) != arrow(0)$ um vetor ortogonal (normal) a $pi$. como $arrow(n) perp pi$, $arrow(n)$ é ortogonal a todo vetor representado em $pi$, assim, $P(x,y,z) in pi <=> arrow(A P) perp arrow(n)$, ou seja, $arrow(A P) dot arrow(n) = 0$, utilizando isso, a *equação geral do plano* $pi$ é 

$ pi: a x + b y + c z + d = 0 $

$ d = -a x_0 - b y_0 - c z_0 $

== Equação vetorial do plano
Sejam $A(x_0, y_0, z_0)$ um ponto de um plano $pi$, $arrow(u) = (a_1, b_1, c_1)$ e $arrow(v) = (a_2, b_2, c_2)$, dois vetores não colineares, paralelos a $pi$ e um ponto $P(x, y, z) in pi <=> exists lambda, mu in RR$ tais que $arrow(A P) = lambda arrow(u) + mu arrow(v) =>$ 

$ pi: P = A + lambda arrow(u) + mu arrow(v) $

Em coordenadas

$ pi: (x,y,z) = (x_0, y_0, z_0) + lambda(a_1, b_1, c_1) + mu(a_2, b_2, c_2) $

Essa é a *equação vetorial do plano* $pi$, $arrow(u)$ e $arrow(v)$ são chamados *vetores diretores do plano* $pi$ e $lambda "e" mu$ são chamados *parâmetros do plano* $pi$

#pagebreak()

== Equações paramétricas do plano
Utilizando a equação vetorial se chega nas seguintes equações:

$ cases(
  x = x_0 + a_1 lambda + a_2 mu,
  y = y_0 + b_1 lambda + b_2 mu,
  z = z_0 + c_1 lambda + c_2 mu
) $

== Angulos entre planos
Dados dois planos $pi_1$ e $pi_2$ com normais $arrow(n_1)$ e $arrow(n_2)$ respectivamente, o angulo $Phi$ entre $pi_1$ e $pi_2$ é definido como o menor ângulo $theta$ entre as retas $r_1$ e $r_2$ perpendiculares a $pi_1$ e $pi_2$. Assim o ângulo entre os planos é dado por:

$ theta = arccos((|arrow(n_1) dot arrow(n_2)|)/(||arrow(n_1)|| ||arrow(n_2)||)), 0<= theta <= 90 $

= Distâncias
== Distância entre dois pontos
$P_1(x_1, y_1, z_1)$ e $P_2(x_2, y_2, z_2)$ é $ "d"(P_1, P_2) = ||arrow(P_1 P_2)|| $

== Distância entre ponto e reta
Dados um ponto $P$, uma reta $r$ com vetor diretor $arrow(v)$ e um ponto $A in r$ a distância entre $P$ e $r$ é dada por:

$ "d"(P, r) = (||arrow(A P) times arrow(v)||)/(||arrow(v)||) $

== Distância entre ponto e plano
Dado um ponto $P(x_0, y_0, z_0)$ e um plano $pi: a x + b y + c z + d = 0$ a distância entre  $P$ e $pi$ é dada por:

$ "d"(P, pi) =  (|a x_0 + b y_0 + c z_0 + d|)/(sqrt(a^2 + b^2 + c^2)) $
