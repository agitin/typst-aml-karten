#set document(
  title: [AML-Merkhilfe für NFS]
)

#let today = datetime(
  year: 2026,
  month: 03,
  day: 01,
)

#set page(
  paper: "a6",
  margin: (x:8mm, y:10mm),
)

// Überschriften anpassen
#show heading.where(level: 1): it => [
  #set text(12pt, weight: "bold")
  #block(upper(it.body))
]

#show heading.where(level: 2): it => [
  #set text(11pt, weight: "bold")
  #block(it.body)
]

// Atkinson ist eine Schriftart für Menschen mit Sehbehinderungen, speziell für klare Formen und hohe Lesbarkeit entwickelt
#set text(
  font: "Atkinson Hyperlegible", 
  size: 11pt,
  lang: "de",
)

// kompaktere Zeilenabstand und etwas mehr Abstand zwischen den Absätzen für bessere Lesbarkeit
#set par(
  leading: .5em,
  spacing: .8em,
  justify: true,
)

#set ref(form: "page")

// sorgt für abwechselnd graue und weiße Zeilen in Tabellen, um die Lesbarkeit zu verbessern und Verwechslungsgefahr bei den Dosierungn zu reduzieren
#set table(
  fill: (_, y) => if calc.even(y) { rgb("#e7e7e7") },
)

// Definieren von Auto-Textstilen für Erwachsen/e und Kind/er zur besseren Unterscheidbarkeit
#show regex("Erwachsen(e)?n?"): name => text(
  [#name.text],
  fill: red, // gemäß ASBÖ AML Farbschema
)

#show regex("Kinder(n)?") : name => text(
  [#name],
  fill: purple, // gemäß ASBÖ AML Farbschema
)

#show regex("(?i)(\d+x\s)?Wiederholb?ar(e)?"): name => text(
  [#name.text],
  weight: "bold",
  fill: olive, // adjust color as needed
)

#show "Kontraindikation": name => text(
  highlight("Kontraindikation", fill: red, extent: 1pt),
  fill: white,
)

// ############################################
// ################## Deckblatt ##################
// ############################################
#set page(
  numbering: none,
  footer: 
    grid(
      columns: (1fr),
      align: (center),
      [Stand: #today.display("[day].[month].[year]")],
    ),
)

#align(center + horizon)[
  // Add your image here and adjust the width as needed
  #image("star_of_life.svg", width: 50%)
  
  // Add vertical space between the image and the text
  #v(2em) 
  
  // Add your text below the image
  #text(size: 24pt, weight: "bold")[AML Merkhilfe]
  
  #v(0.6em)
  #text(size: 16pt)[Inoffiziell, privat erstellt]#linebreak()
  #text(size: 13pt)[Nutzung ausschließlich auf eigenes Risiko]
]

#pagebreak()
#set page(
  numbering: "1",
  header: 
    grid(
        columns: (1fr, 1fr),
        align: (left, right),
        [],
        [],
    ),
  footer: 
    grid(
      columns: (1fr, 1fr),
      align: (left, right),
      [Stand: #today.display("[day].[month].[year]")],
      context{
        text(
          counter(page).display("1"),
          size: 16pt,
        )
      }
    ),
  )
#counter(page).update(1)

// ############################################
// ################## INHALT ##################
// ############################################

// Formattierung Inhaltsverzeichnis
// #show outline.entry.where(level: 1): set block(
//   above: .8em,
//   fill: (rgb("#e7e7e7")),
//   outset: .3em,
// )

#show outline.entry: it => {
  let i = counter(outline.entry).get().first()

  link(
    it.element.location(),
    block(
      fill: if calc.odd(i) { rgb("#e7e7e7") } else { none },
      outset: .3em,
      above: .8em,
      it.indented(it.prefix(), it.inner())
    ),
  )
}

// Titel und Inhaltsverzeichnis
#outline(
  title:"Inhalt",
  depth: 1
)
#v(1fr)

#pagebreak()
#include "reanimation-erwachsen.typ"

#pagebreak()
#include "reanimation-kind.typ"

#pagebreak()
#include "allergische-haut-reaktion.typ"

#pagebreak()
#include "schw-anaphyl-reaktion-nfs.typ"

#pagebreak()
#include "schw-anaphyl-reaktion-nkv.typ"

#pagebreak()
#include "schwellung-atemwege.typ"

#pagebreak()
#include "akuter-bronchospasmus.typ"

#pagebreak()
#include "hypertensiver-notfall.typ"

#pagebreak()
#include "hypoglykämie.typ"

#pagebreak()
#include "hypovolämie.typ"

#pagebreak()
#include "fieber-krampfanfall.typ"

#pagebreak()
#include "krampfanfall-nfs.typ"

#pagebreak()
#include "krampfanfall-nkv.typ"

#pagebreak()
#include "opiatintoxikation.typ"

#pagebreak()
#include "ischämischer-thoraxschmerz.typ"

#pagebreak()
#include "starke-blutung.typ"

//#pagebreak()
//#include "schmerzen-nrs-5-nfs.typ"

//#pagebreak()
//#include "schmerzen-nrs-5-nkv.typ"

#pagebreak()
#include "übelkeit-erbrechen.typ"

//#pagebreak()
//#include "sedo-analgesie.typ"

#pagebreak()
#include "larynxmaske-cpr.typ"