#set document(
  title: [AML-Merkhilfe für NFS#linebreak()beim ASB Linz]
)

#let today = datetime.today()

#set page(
  paper: "a6",
  margin: 10mm,
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

#show heading.where(level: 1): it => [
  #set text(11pt, weight: "bold")
  #block(upper(it.body))
]
// Atkinson ist eine Schriftart für Menschen mit Sehbehinderungen, speziell für klare Formen und hohe Lesbarkeit entwickelt
#set text(
  font: "Atkinson Hyperlegible", 
  size: 9pt,
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

#show regex("Kinder") : name => text(
  [#name.text],
  fill: purple, // gemäß ASBÖ AML Farbschema
)

// #show regex("Wiederholb?ar(e)?"): name => text(
//   [#name.text],
//   weight: "bold",
//   fill: olive, // adjust color as needed
// )

// #show regex("Wiederholung(en)?"): name => text(
//   [#name.text],
//   weight: "bold",
//   fill: olive, // adjust color as needed
// )

#show "Kontraindikation": name => text(
  highlight("Kontraindikation", fill: red, extent: 1pt),
  fill: white,
)

// ############################################
// ################## INHALT ##################
// ############################################

// Formattierung Inhaltsverzeichnis
#show outline.entry.where(
  level: 1
): set block(above: .8em)

// Titel und Inhaltsverzeichnis
#v(1fr)
#title()
#v(1fr)
#outline(depth: 1)
#v(1fr)

#pagebreak()
#include "reanimation.typ"

#pagebreak()
#include "reanimation-kind-tabelle.typ"

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

#pagebreak()
#include "schmerzen-nrs-5-nfs.typ"

#pagebreak()
#include "schmerzen-nrs-5-nkv.typ"

#pagebreak()
#include "übelkeit-erbrechen.typ"

#pagebreak()
#include "sedo-analgesie.typ"

#pagebreak()
#include "larynxmaske-cpr.typ"