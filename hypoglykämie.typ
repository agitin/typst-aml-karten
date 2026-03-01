#import "utils.typ": *
#set page(
  header:
    grid(
      columns: (1fr, 1fr),
      align: (left, right),
      [],
      NA-erwägen,
    ),
)

= HypoGLYKämie <hypoglykämie>
== Indikation
Bewusstseinsstörung mit BZ unter 50 mg/dl

== Kontraindikation
#checkbox-list[Unverträglichkeit/Allergie][unter 6. LJ]

== #embeddedCircledNumber(1) Glucose i.v. (20% = 200 mg/ml)
- Wiederholbar bis Zustandsverbesserung
- Dosierungsangaben nur gültig für 20%ige Glucose, bei 10%iger Glucose Verdopplung des Volumens

#table(
  columns: (1fr, auto),
  align: (left, center),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*20 g* = 100 ml],
  [Kinder], [*10 g* = 50 ml],
)