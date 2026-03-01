#import "utils.typ": *
#set page(
  header:
    grid(
      columns: (1fr, 1fr),
      align: (left, right),
      [],
      NA-alarmierung,
    ),
)

= Reanimation Erwachsen (Standard)

== Indikation
CPR, Atemstillstand

== Kontraindikation
#checkbox-list[Kreislaufzeichen][Unverträglichkeit/Allergie]


== #embeddedCircledNumber(1) Epinephrin i.v. (2 mg / 20 ml)#handelsname[L-Adrenalin]
- _NICHT_ schockbar → sofortige Gabe
- schockbar → Gabe nach 3. Schock
- Wiederholbar alle 2 Analysen oder 3–5 Minuten
#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*1 mg* = 10 ml],
)


== #embeddedCircledNumber(2) Amiodaron i.v. (150 mg / 3 ml) #handelsname[Sedacoron]
- nach 3. Schock → 1. Dosis
- nach 5. Schock → 2. Dosis
- Nachspülen mit 20ml NaCl 0.9 % oder Infusion
#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene – 1. Dosis], [*300 mg* = 6 ml/2 Amp.],
  [Erwachsene – 2. Dosis], [*150 mg* = 3 ml/1 Amp.],
)

== #embeddedCircledNumber(3) Elektrolytlösung i.v. #handelsname[Elo-Mel isoton]
- 1x wiederholbar, wenn keine Besserung

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*500 ml* (1 Infusion)],
)