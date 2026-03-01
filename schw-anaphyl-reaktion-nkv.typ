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

= Schwere anaphylakt. Reaktion – NKV
== Indikation
Ereignisbezogener Zusammenhang (Insektenstich, Medikamente, Nahrungsmittel, etc.), Schwere Atemnot, Stridor, Bronchospasmus, Schocksymptome

== Kontraindikation
#checkbox-list[Gewicht/Alter je nach Arzneimittel][Unverträglichkeit/Allergie]

== #embeddedCircledNumber(1) Epinephrin i.m. (1 mg/1 ml) #handelsname[Suprarenin]
- *Linz*: Nur wenn kein EpiPen verfügbar (🔗@anaphylaxie-nfs)
- 1x wiederholbar, nach 5 Minuten, wenn keine Besserung
- in den Oberschenkelmuskel

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*0,5 mg* (= 0,5 ml)],
  [Kinder über 12. LJ], [*0,5 mg* (= 0,5 ml)],
  [Kinder 6.–12. LJ.], [*0,3 mg* (= 0,3 ml)],
  [Kinder 3.–6. LJ.], [*0,15 mg* (= 0,15 ml)],
)

== #embeddedCircledNumber(2) 🔗@schwellung-obere-atemwege - Epinephrin, inhalativ
Bei einer zusätzlichen Schwellung der oberen  Atemwege oder Bronchospasmus

#v(1fr)
#h(1fr)*→ Fortsetzung auf der nächsten Seite!*#h(1fr)
#v(1fr)

#box[
== #embeddedCircledNumber(3) Elektrolytlösung i.v. #handelsname[Elo-Mel isoton]
- 1x wiederholbar, wenn keine Besserung

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*500 ml* (1 Infusion)],
  [Kinder über 6. LJ], [*250 ml* (½ Infusion)],
)
]
#box[

== #embeddedCircledNumber(4) Diphenhydramin i.v. (30 mg/2 ml) #handelsname[Dibondrin]
- Einmalanwendung

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*30 mg* = 2 ml],
  [Kinder über 6. LJ / über 18 kg], [*30 mg* = 2 ml],
)
]

== #embeddedCircledNumber(5) Prednisolon i.v. (250 mg/5 ml) #handelsname[Prednisolut]
- Einmalanwendung
- Muss aus Pulver und Lösungsmittel (5 ml Aqua) hergestellt werden
- *Linz*: Maximal 250 mg (= 5 ml) verfügbar #linebreak()→ reduzierte Dosis für Erwachsene
//TODO erc guidelines checken und ggf. vermerk bzgl. outdated ergänzen

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  //fill: (x,y) => if (y == 0) or (y == 4) {pat} else if (y == 2) {rgb("#e7e7e7")} else {none},
  gutter: 0pt,
  [Erwachsene], [*500 mg* = 10 ml],

  [Kinder über 30 kg / über 6. LJ], [*250 mg* = 5 ml],
  [Kinder 18–30 kg / über 6. LJ], [*100 mg* = 2 ml],
)

