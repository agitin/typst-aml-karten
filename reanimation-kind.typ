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

= Reanimation Kinder

== Indikation
CPR, Atemstillstand

== Kontraindikation
#checkbox-list[Kreislaufzeichen][Unverträglichkeit/Allergie][unter 6. LJ]

== #embeddedCircledNumber(1) Epinephrin i.v. (2 mg / 20 ml)#handelsname[L-Adrenalin]
- _NICHT_ schockbar → sofortige Gabe
- schockbar → Gabe nach 3. Schock
- Wiederholbar alle 2 Analysen oder 3–5 Minuten
#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Kinder], [*0,01 mg/kg KG* ] + text("→ siehe Rückseite", fill: red,),
)


== #embeddedCircledNumber(2) Amiodaron i.v. (150 mg / 3 ml) #handelsname[Sedacoron]
- nach 3. Schock
- nach 5. Schock (bei Kindern keine Dosisreduktion!)
- Nachspülen mit 20ml  NaCl 0.9 % oder Infusion
#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Kinder], [*5 mg/kg KG* ] + text("→ siehe Rückseite", fill: red,),
)

== #embeddedCircledNumber(3) Elektrolytlösung i.v. #handelsname[Elo-Mel isoton]
- 1x wiederholbar, wenn keine Besserung
//TODO volumenbolus ist bei Kindern lt. NNÖ lt. ERC unbedingt zu geben --> Checken

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Kinder], [*250 ml* (½ Infusion)],
)

#pagebreak()

- *Faustregel:* #linebreak()Für L-Adrenalin und Amiodaron in der Reanimation ist die Dosierung #text(fill: red)[*1 ml je 10 kg KG*], bei den typischen Verdünnungen (Adrenalin: 1 mg / 10 ml, Amiodaron: 150 mg / 3 ml)
- Die Amiodaron-Dosierung ist bei der Kinder-Reanimation für beide Gaben ident und wird nicht gesteigert.
//#v(2em)
#show table.cell.where(y: 0): strong
#text(size:10pt)[
	#table(
		columns: (auto, auto, 1fr, 1fr),
		align: (right, center, center, center),
		stroke: (x,y) => (
			left: if x == 2 { black } else { none },
			right: if x == 2 and y >= 2 and y <= 10 { gray } else { none },
			bottom: if y == 0 { black } else { none },
		),
		gutter: 0pt,
		inset: (y: 6pt, x: 4pt),
		table.header[Alter][KG][L-Adrenalin][Amiodaron],
		[>14 LJ.], [], table.cell(colspan:2)[Erwachsenen-Reanimation],
		[14 LJ.], [36 kg], [0,36 mg (3,6 ml)], [180 mg (3,6 ml)],
		[13 LJ.], [34 kg], [0,34 mg (3,4 ml)], [170 mg (3,4 ml)],
		[12 LJ.], [32 kg], [0,32 mg (3,2 ml)], [160 mg (3,2 ml)],
		[11 LJ.], [30 kg], [0,30 mg (3,0 ml)], [150 mg (3,0 ml)],
		[10 LJ.], [28 kg], [0,28 mg (2,8 ml)], [140 mg (2,8 ml)],
		[9 LJ.], [26 kg], [0,26 mg (2,6 ml)], [130 mg (2,6 ml)],
		[8 LJ.], [24 kg], [0,24 mg (2,4 ml)], [120 mg (2,4 ml)],
		[7 LJ.], [22 kg], [0,22 mg (2,2 ml)], [110 mg (2,2 ml)],
		[6 LJ.], [20 kg], [0,20 mg (2,0 ml)], [100 mg (2,0 ml)],
		[\<6 LJ.], [], table.cell(colspan:2)[_KEINE_ Medikamente],
	)
]
