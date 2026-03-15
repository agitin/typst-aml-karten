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

= Hypertensiver Notfall <hypertensiver-notfall>
== Indikation
- #underline[FAST+ unauffällig & RR#sub[sys] > 200 mmHg]#linebreak() mit Symptomatik: AP, Lungenödem, Neur. Defizit, Kopfschmerzen, Sehstörungen, Präeklampsie.#linebreak()
- #underline[FAST+ auffällig & RR#sub[sys] > 220 mmHg]

== Kontraindikation
#checkbox-list[Kind][Unverträglichkeit/Allergie]

== #embeddedCircledNumber(1) Urapidil i.v. (25 mg/5 ml) #handelsname[Ebrantil]
- 4x wiederholbar alle 5 Minuten nach RR-Kontrolle, bis Besserung oder #underline[max. 25 mg/5 ml]
- max. um 25% senken, RR#sub[sys] 160 mmHg #linebreak() (bei FAST+ 190 mmHg) nicht unterschreiten

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*5 mg* = 1 ml],
)

#text(size:9pt)[
  #table(
    columns: (auto, ..(1fr, ) * 7),
    align: (left, ..(center,) * 7),
    stroke: none,
    gutter: 0pt,
    //inset: (y: 6pt, x: 4pt),
    fill: (x,y) => if calc.even(x) { rgb("#f5f5f5") },
    [RR#sub[sys] initial], [200], [210], [220], [230], [240], [250], [260],
    [], [↓max], [↓max], [↓max], [↓max], [↓max], [↓max], [↓max],
    [25% Grenze], [160], [160], [165], [173], [180], [188], [195],
  )
]

== #embeddedCircledNumber(2) Elektrolytlösung i.v. #handelsname[Elo-Mel isoton]
- Einmalanwendung
- langsam offen-haltende Flussrate

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*500 ml* (langsam offen-haltend)],
)