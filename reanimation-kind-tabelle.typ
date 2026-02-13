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

= Reanimation – Kinder-Tabelle
- *Faustregel:* #linebreak()Für L-Adrenalin und Amiodaron in der Reanimation ist die Dosierung #text(fill: red)[*1 ml je 10 kg KG*], bei den typischen Verdünnungen (Adrenalin: 1 mg / 10 ml, Amiodaron: 150 mg / 3 ml)
- Die Amiodaron-Dosierung ist bei der Kinder-Reanimation für beide Gaben ident und wird nicht gesteigert.
#v(2em)
#show table.cell.where(y: 0): strong
#table(
	columns: (auto, auto, 1fr, 1fr),
	align: (center, center, center, center),
	stroke: (x,y) => (
    left: if x == 2 { black } else { none },
    right: if x == 2 and y >= 2 and y <= 10 { gray } else { none },
    bottom: if y == 0 { black } else { none },
  ),
	gutter: 0pt,
	table.header[Alter][Gewicht][L-Adrenalin][Amiodaron],
	table.cell(colspan:2)[> 14 LJ.], table.cell(colspan:2)[Erwachsenen-Reanimation],
	[14 LJ.], [36 kg], [0,36 mg (3,6 ml)], [180 mg (3,6 ml)],
	[13 LJ.], [34 kg], [0,34 mg (3,4 ml)], [170 mg (3,4 ml)],
	[12 LJ.], [32 kg], [0,32 mg (3,2 ml)], [160 mg (3,2 ml)],
	[11 LJ.], [30 kg], [0,30 mg (3,0 ml)], [150 mg (3,0 ml)],
	[10 LJ.], [28 kg], [0,28 mg (2,8 ml)], [140 mg (2,8 ml)],
	[9 LJ.], [26 kg], [0,26 mg (2,6 ml)], [130 mg (2,6 ml)],
	[8 LJ.], [24 kg], [0,24 mg (2,4 ml)], [120 mg (2,4 ml)],
	[7 LJ.], [22 kg], [0,22 mg (2,2 ml)], [110 mg (2,2 ml)],
	[6 LJ.], [20 kg], [0,20 mg (2,0 ml)], [100 mg (2,0 ml)],
	table.cell(colspan:2)[< 6 LJ.], table.cell(colspan:2)[_KEINE_ Medikamente],
)
