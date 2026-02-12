#let today = datetime.today()

#set page(
  paper: "a6",
  margin: 10mm,
  numbering: "1",
  header:
    grid(
      columns: (1fr, 1fr),
      align: (left, right),
      [Merkhilfe für NFS],
      [ASB Linz],
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

// Atkinson ist eine Schriftart, die speziell für Menschen mit Sehbehinderungen entwickelt wurde. Sie zeichnet sich durch klare Formen und hohe Lesbarkeit aus, was sie ideal für eine gute Unterscheidbarkeit zwischen ähnlichen Buchstaben macht
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
  fill: (_, y) => if calc.odd(y) { rgb("#e7e7e7") },
)

// Definieren von Auto-Textstilen für Erwachsen/e und Kind/er zur besseren Unterscheidbarkeit
#show regex("Erwachsen(e)?n?"): name => text(
  [#name.text],
  fill: red, // gemäß ASBÖ AML Farbschema
)

#show regex("Kind(er)?"): name => text(
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

// Inhaltsverzeichnis
#v(1fr)
#outline(depth: 1)
#v(1fr)

#pagebreak()
#include "reanimation-erwachsen.typ"

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
#include "krampfanfall-erwachsen-nfs.typ"

#pagebreak()
#include "krampfanfall-erwachsen-nkv.typ"

#pagebreak()
#include "krampfanfall-kind-nfs.typ"

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
#include "larynxmaske-cpr.typ"