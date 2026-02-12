#import "utils.typ": *

= Schwere anaphylakt. Reaktion – NKV
== Indikation
Ereignisbezogener Zusammenhang (Insektenstich, Medikamente, Nahrungsmittel, etc.), Schwere Atemnot, Stridor, Bronchospasmus, Schocksymptome

== Kontraindikation
#checkbox-list[Unverträglichkeit/Allergie][Epinephrin: < 15 kg / < 3. LJ][Diphenhydramin und Prednisolon: < 18 kg][Elektrolytlösung, Diphenhydramin und Prednisolon: < 6. LJ]

#crossed[
  == 1. Epinephrin i.m. (1 mg / 1 ml) #handelsname[Suprarenin]
  - 1x wiederholbar, nach 5 Minuten, wenn keine Besserung
  - in den Oberschenkelmuskel

  #table(
    columns: (1fr, auto),
    align: (left, center),
    stroke: none,
    gutter: 0pt,
    [Erwachsene], [*0,5 mg* (= 0,5 ml)],
    [Kinder über 12. LJ], [*0,5 mg* (= 0,5 ml)],
    [Kinder 6.–12. LJ.], [*0,3 mg* (= 0,3 ml)],
    [Kinder 3.–6. LJ.], [*0,15 mg* (= 0,15 ml)],
  )
]
→ RTW Linz: *AML1*, Epinephrin i.m. *Autoinjektor*, @anaphylaxie-nfs.

== Eventuell: Epinephrin, inhalativ
Bei einer zusätzlichen Schwellung der oberen  Atemwege oder Bronchospasmus, gem. AML1 auf @schwellung-obere-atemwege.


== 2. Elektrolytlösung i.v. (500 ml) #handelsname[Elo-Mel isoton]
- 1x wiederholbar, wenn keine Besserung

#table(
  columns: (1fr, auto),
  align: (left, right),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*500 ml* (1 Infusion)],
  [Kinder], [*250 ml* (½ Infusion)],
)
#v(1fr)
#h(1fr)→ *Fortsetzung auf der nächsten Seite!*#h(1fr)
#v(1fr)

#box[
== 3. Diphenhydramin i.v.#linebreak() (30 mg / 2 ml) #handelsname[Dibondrin]
- Einmalanwendung

#table(
  columns: (1fr, auto),
  align: (left, center),
  stroke: none,
  gutter: 0pt,
  [Erwachsene], [*30 mg* = 2 ml],
  [Kinder über 18 kg KG], [*30 mg* = 2 ml],
)
]

== 4. Prednisolon i.v. #linebreak() (250 mg Pulver / 5ml Aqua) #handelsname[Prednisolut]
- Einmalanwendung

#table(
  columns: (1fr, auto),
  align: (left, center),
  stroke: none,
  fill: (x,y) => if (y == 0) or (y == 4) {pat} else if (y == 2) {rgb("#e7e7e7")} else {none},
  gutter: 0pt,
  [Erwachsene], [*500 mg* = 10 ml],
  [Erwachsene], [→ RTW Linz: *250 mg* = 5 ml],
  [Kinder über 30 kg KG], [*250 mg* = 5 ml],
  [Kinder 18–30 kg KG], [*100 mg* = 2 ml],
  [Kinder < 18 kg KG], [*50 mg rektal*],
)
→ RTW Linz: nur maximal 250mg Prednisolon i.v. (= 5 ml) für Erwachsene verfügbar und allgemein keine rektale Gabe von Prednisolon für Kinder.

