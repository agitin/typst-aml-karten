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

= Bestehender zereb. Krampfanf. – NFS <krampfanfall-nfs>
== Indikation
plötzliche Bewusstlosigkeit, tonisch-klonische Krämpfe, passagerer Atemstillstand

== Kontraindikation
#checkbox-list[Arzneimittel bereits eingenommen][Gewicht/Alter je nach Arzneimittel][Unverträglichkeit/Allergie]

Entweder #embeddedCircledNumber(text(weight:"bold")[A]) oder #embeddedCircledNumber(text(weight:"bold")[B]) → keine gleichzeitige Gabe!

== #embeddedCircledNumber("A") Midazolam nasal (15 mg/3 ml) #handelsname[Dormicum]
- Einmalanwendung
- mittels MAD, #underline[max. 1 ml pro Nasenloch]

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*10 mg* (= 2 ml)],
  [Kinder über 8. LJ], [*10 mg* (= 2 ml)],
)

== #embeddedCircledNumber("B") Diazepam rektal #handelsname[Stesolid]
- Einmalanwendung
- Rektaltube: rein, ausdrücken, gedrückt rausziehen

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene über 65. LJ], [*5 mg* (#highlight(fill: green.transparentize(50%))[grün] markiert)],
  [Erwachsene unter 65. LJ], [*10 mg* (#highlight(fill: red.transparentize(50%))[rot] markiert)],
  [Kinder über 3. LJ], [*10 mg* (#highlight(fill: red.transparentize(50%))[rot] markiert)],
  [Kinder 10–15 kg / 1.–3. LJ], [*5 mg* (#highlight(fill: green.transparentize(50%))[grün] markiert)],
)