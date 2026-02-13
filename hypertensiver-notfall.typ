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
RR#sub[sys] > 200 mmHg mit Symptomatik aber ohne Auffälligkeiten im FAST+: AP, Lungenödem, Neur. Defizit, Kopfschmerzen, Sehstörungen, Präeklampsie.
Bei Auffälligkeiten im FAST+ erst ab RR#sub[sys] > 220 mmHg.

== Kontraindikation
#checkbox-list[Unverträglichkeit/Allergie][Kind]

== Urapidil i.v. (25 mg / 5 ml) #handelsname[Ebrantil]
- Alle 5 Minuten nach Kontroll-Messung bis zu 4x wiederholbar, also in Summe bis max. 25 mg / 5 ml
- max. um 25% des Ausgangswerts senken und nicht unter RR#sub[sys] 160 mmHg (bei FAST+ nicht unter 190 mmHg)

#table(
  columns: (1fr, auto),
  align: (left, center),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*5 mg* = 1 ml],
)

== Elektrolytlösung i.v. (500 ml) #handelsname[Elo-Mel isoton]
- Einmalanwendung
- langsam offen-haltende Flussrate

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*500 ml* (langsam offen-haltend)],
)


#table(
  columns: (1fr, ) * 7,
  align: (center,) * 7,
  stroke: none,
  gutter: 0pt,
  fill: (x,y) => if calc.even(x) or y == 0 or y == 4 { rgb("#e7e7e7") },
  table.cell(colspan: 7, align: center)[*Ausgangswert* RR#sub[sys] in mmHg],
  [200], [210], [220], [230], [240], [250], [260],
  [↓], [↓], [↓], [↓], [↓], [↓], [↓],
  [160], [160], [165], [173], [180], [188], [195],
  table.cell(colspan: 7, align: center)[*maximal Senken auf* RR#sub[sys] in]
)

// Alternatives Tabellen-Design, falls die obige Tabelle zu unübersichtlich ist:

// #table(
//   columns: (1fr, 1fr),
//   align: (left, left),
//   stroke: none,
//   gutter: 0pt,
//   fill: (x,y) => if calc.even(x+y) or y == 0 or y == 4 { rgb("#e7e7e7") },
//   table.cell(colspan: 2, align: center)[*Ausgangswert RR#sub[sys] → max. Senken auf*],
//   [200 → 160 mmHg],
//   [210 → 160 mmHg],
//   [220 → 165 mmHg],
//   [230 → 173 mmHg],
//   [240 → 180 mmHg],
//   [250 → 188 mmHg],
// )
