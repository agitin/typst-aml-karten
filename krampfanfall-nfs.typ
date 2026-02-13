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

= Bestehender zereb. Krampfanfall – NFS <krampfanfall-nfs>
== Indikation
plötzliche Bewusstlosigkeit, tonisch-klonische Krämpfe, passagerer Atemstillstand

== Kontraindikation
#checkbox-list[Unverträglichkeit/Allergie][Spezialität bereits eingenommen][für Diazepam: < 10 kg KG / 1. LJ][für Midazolam: < 8. LJ]

== Midazolam nasal (15 mg / 3 ml) #handelsname[Dormicum]
- Einmalanwendung
- mittels MAD, max. 1 ml pro Nasenloch

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*10 mg* (= 2 ml, 1ml pro Nasenloch)],
  [Kinder über 8. LJ], [*10 mg* (= 2 ml, 1ml pro Nasenloch)],
)

== Diazepam rektal (10 mg, 5 mg) #handelsname[Stesolid]
- Einmalanwendung
- mittels Rektaltube: rein, ausdrücken, gedrückt rausziehen

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene über 65. LJ], [*5 mg* (#highlight(fill: green.transparentize(50%))[grün] markiert)],
  [Erwachsene unter 65. LJ], [*10 mg* (#highlight(fill: red.transparentize(50%))[rot] markiert)],
  [Kinder Über 3. LJ], [*10 mg* (#highlight(fill: red.transparentize(50%))[rot] markiert)],
  [Kinder 10–15 kg KG / 1.–3. LJ], [*5 mg* (#highlight(fill: green.transparentize(50%))[grün] markiert)],
)

#box[#crossed[
== Midazolam bukkal #handelsname[Buccolam]
- Einmalanwendung
- zwischen Zahnfleisch und Wange

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Kinder 10.–18. LJ], [*10 mg*],
  [Kinder 5.–10. LJ], [*7,5 mg*],
  [Kinder 1.–5. LJ], [*5 mg*],
  [Kinder 3. LM – 1. LJ], [*2,5 mg*],
)
]]
→ RTW Linz: nur Midazolam nasal verfügbar, nicht bukkal