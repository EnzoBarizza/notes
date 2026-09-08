#import "lib/notes.typ": *
#show: note-style.with(aluno: "Enzo Barizza Leal")
#begin-note(
  materia: "G.A.A.L",
  aula: 1,
  professor: "Jean Venato Santos"
)

= Vetores
== Noção Geométrica
#def[ Um segmento orientado é determinado por um par ordenado de pontos, o primeiro é chamado de origem e o segundo extremidade. Notação: $A B$ ]


- Segmentos orientados cuja extremidade coincide com a origem são ditos segmentos nulos, exemplo: $A A$
- Se $A != B, A B != B A$. $B A$ é denominado segmento oposto de $A B$

#def[Dois segmentos orientados $A B$ e $C D$ são equipolentes quando possuem mesmo comprimento, direção e sentido. Notação $A B ~ C D$]

#def[Um vetor $arrow(v)$ determinado por um segmento orientado $A B$ é conjunto de todos os segmentos equipolentes à $A B$. Notação: $arrow(v) = arrow(A B)$

$arrow(v) = arrow(A B) = {X Y ; X Y ~ A B}$
]

Cada segmento equipolente a $A B$ é chamado de representante do vetor $arrow(A B)$.

= Operação com Vetores
== Soma de Vetores
A soma de $arrow(u) + arrow(v)$ é definida como:

$i)$ Tome um representante $A B$ do vetor $arrow(u)$

$i i)$ Tome um representante de $B C$ com $arrow(v)$ com origem em $B$

$i i i)$ $arrow(u) + arrow(v)$ é o vetor representando pelo segmento $A C$

Obs: $arrow(u) + arrow(v) = arrow(underline(A) B) + arrow(B underline(C)) = arrow(underline(A D))$

#def[
  Dado um vetor $arrow(u)$, não nulo, definimos o vetor oposto $arrow(u)$, denotado por $-arrow(u)$, como sendo o vetor com: mesma direção, mesmo comprimento e sentido oposto a $arrow(u)$
]

#def[A diferença, $arrow(u) - arrow(v)$, entre $arrow(u)$ e $arrow(v)$, (nessa ordem), é a soma de $arrow(u)$ com o oposto de $arrow(v)$, ou seja, $arrow(u) - arrow(v) = arrow(u) + (-arrow(v))$]
