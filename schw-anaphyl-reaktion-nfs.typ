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
= Schwere anaphylakt. Reaktion – NFS <anaphylaxie-nfs>
== Indikation
Ereignisbezogener Zusammenhang (Insektenstich, Medikamente, Nahrungsmittel, etc.), Schwere Atemnot, Stridor, Bronchospasmus, Schocksymptome

== Kontraindikation
#checkbox-list[Unverträglichkeit/Allergie][< 15 kg KG / < 3. LJ]

== 1. Epinephrin i.m. Autoinjektor #handelsname[EpiPen (Junior)]
- 1x wiederholbar, nach 5 Minuten, wenn keine Besserung
- in den Oberschenkelmuskel

#table(
  columns: (1fr, auto),
  align: (left, center),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*0,3 mg*],
  [Kinder über 30 kg KG], [*0,3 mg*],
  [Kinder 15–30 kg KG / 3.-12. LJ.], [*0,15 mg* (Junior)],
)

== Eventuell: Epinephrin, inhalativ
Bei einer zusätzlichen Schwellung der oberen  Atemwege oder Bronchospasmus, gem. AML1 auf @schwellung-obere-atemwege.

#crossed[
== 2. Prednisolon rektal #handelsname[Rectodelt]
- Einmalanwendung

#table(
  columns: (1fr, auto),
  align: (left, center),
  stroke: none,
  gutter: 0pt,
  [Kinder], [*100 mg*],
)
]
