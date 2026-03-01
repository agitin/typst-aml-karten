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

= Opiatintoxikation <opiatintoxikation>
== Indikation
Bewusstseinsstörung, Atemstörung, SpO#sub[2] trotz O#sub[2] vermindert, Zyanose, stecknadelkopfgroße Pupillen, Suchtmittelanamnese

== Kontraindikation
#checkbox-list[Kind][Unverträglichkeit/Allergie]

Entweder #embeddedCircledNumber(text(weight:"bold")[A]) oder #embeddedCircledNumber(text(weight:"bold")[B]) → keine gleichzeitige Gabe!

== #embeddedCircledNumber("A") Naloxon #underline[nasal] (0,4 mg/1 ml) #handelsname[Narcanti]
- 3x wiederholbar, alle 5 Minuten, bis Besserung oder #underline[max. 0.8 mg = 2 ml]
- mittels MAD, max. 1 ml pro Nasenloch

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*0,2 mg* (= 0,5 ml)],
)


== #embeddedCircledNumber("B") Naloxon #underline[i.v.] (0,4 mg/1 ml) #handelsname[Narcanti]
- 3x wiederholbar, alle 5 Minuten, bis Besserung oder #underline[max. 0.8 mg = 2 ml]

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*0,2 mg* (= 0,5 ml)],
)
