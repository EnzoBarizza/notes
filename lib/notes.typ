#let note-style(body, aluno: "") = {
  set page(
    header: {
      context {
        let heading = query(selector(heading).before(here()))
        grid(
        columns: (1fr, 1fr),
        [
          #text(size: 10pt)[_ #aluno _]
        ],
        align(right)[
          #if heading.len() > 0 {
            let current = heading.last()
            [#current.body]
          }
        ])
      }
      line(length: 100%)
    },
    footer: {
      align(center)[
        #grid(
          columns: (1fr, 1fr, 1fr),
          [#line(length: 100%)],
          [#context counter(page).display("1")],
          [#line(length: 100%)]
        )
      ]
    }
  )
  set text(font: "Noto Sans", size: 12pt)
  set heading(numbering: "1.")
  set outline(title: "Sumário")

  body
}

#let begin-note(
  professor: text,
  materia: text,
  aula: text
) = {
  [
    #text(size: 20pt)[
      #align(center + top)[
        *Anotações de Aula*
      ]
      #align(center + horizon)[
        #materia
        
        Aula #aula
      ]
    ]
    #text(size: 12pt)[
      #align(center + bottom)[
        Professor

        #professor
      ]
    ]
  ]
  pagebreak()
  outline()
  pagebreak()
}

#let pretty-box(body, color, color2, symbols) = {
  pad(rest: 10pt)[
    #box(fill: color, outset: 5pt, inset: 5pt, radius: 10pt)[
      #text(fill: color2, size: 14pt)[
        #symbols
      ]
      #align(center + horizon)[
        #body
      ]
    ]
  ]
}

#let def(body) = pretty-box(body, rgb(0, 255, 125, 150), rgb(0, 155, 100, 255), "Definição")
#let obs(body) = pretty-box(body, rgb(0, 125, 255, 150), rgb(0, 80, 100, 255), "OBS")
