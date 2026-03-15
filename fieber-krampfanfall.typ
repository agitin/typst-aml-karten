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

= Fieber mit Krampfanfall <fieber-krampfanfall>
== Indikation
Fieber >38,5 °C, Fieberkrampfanamnese (rezent oder nicht rezent)

== Kontraindikation
#checkbox-list[Einnahme in den letzten 6h][unter 6. Lebensmonat][Unverträglichkeit/Allergie]

== #embeddedCircledNumber(1) Paracetamol rektal #handelsname[Mexalen]
- Einmalanwendung
- Zäpfchen (250 mg oder 125 mg)

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Kinder 2.–8. LJ], [*250 mg* (#highlight(fill: yellow.transparentize(50%))[gelb] markiert)],
  [Kinder 6. LM– 2. LJ], [*125 mg*],
)
