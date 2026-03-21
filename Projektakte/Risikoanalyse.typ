#set document(
  title: [AML-Merkhilfe für NFS]
)

#let today = datetime(
  year: 2026,
  month: 03,
  day: 01,
)

#set page(
  paper: "a4",
  margin: (
    x: 1.5cm,
  ),
  foreground: rotate(-55deg,
  text(100pt, fill: rgb("#ffcbc441"))[
    *UNGEPRÜFT*
  ]),
  numbering: "1",
  header: 
    grid(
        columns: (1fr, 1fr),
        align: (left, right),
        [],
        [],
    ),
  footer: 
    grid(
      columns: (1fr, 1fr),
      align: (left, right),
      [Stand: #today.display("[day].[month].[year]")],
      context{
        text(
          counter(page).display("1"),
          size: 16pt,
        )
      }
    ),
)

// Überschriften anpassen
#show heading.where(level: 1): it => [
  #set text(22pt, weight: "bold")
  #block(upper(it.body))
]

#show heading.where(level: 2): it => [
  #set text(16pt, weight: "bold")
  #block(underline(it.body))
]

#show heading.where(level: 3): it => [
  #set text(14pt, weight: "bold")
  #block(it.body)
]

#show heading.where(level: 4): it => [
  #set text(12pt, weight: "bold", style: "italic")
  #block(it.body)
]

// Atkinson ist eine Schriftart für Menschen mit Sehbehinderungen, speziell für klare Formen und hohe Lesbarkeit entwickelt
#set text(
  font: "Atkinson Hyperlegible", 
  size: 11pt,
  lang: "de",
)

// kompaktere Zeilenabstand und etwas mehr Abstand zwischen den Absätzen für bessere Lesbarkeit
#set par(
  leading: .5em,
  spacing: .8em,
  justify: true,
)

#set ref(form: "page")

// sorgt für abwechselnd graue und weiße Zeilen in Tabellen, um die Lesbarkeit zu verbessern und Verwechslungsgefahr bei den Dosierungn zu reduzieren
#set table(
  fill: (_, y) => 
    if y==0 {rgb("#e7e7e7")}
    else if calc.even(y) { rgb("#f5f5f5") },
)
#show table.cell.where(y: 0): it => it //underline(it)

#let riskrating(rating) = {
    if(rating == "A1") {
        h(3pt)
        box(
            fill: rgb("#B3DF72"),
            outset: .3em,
            radius: 3pt,
            text("A1 (Sehr gering)", size:9pt, fill: black,)
        )
        h(3pt)
    } else if(rating == "A2") {
        h(3pt)
        box(
            fill: rgb("#8FB8F6"),
            outset: .3em,
            radius: 3pt,
            text("A2 (Gering)", size:9pt, fill: black,)
        )
        h(3pt)
    } else if(rating == "A3") {
        h(3pt)
        box(
            fill: rgb("#D8A0F7"),
            outset: .3em,
            radius: 3pt,
            text("A3 (Moderat)", size:9pt, fill: black,)
        )
        h(3pt)
    } else if(rating == "A4") {
        h(3pt)
        box(
            fill: rgb("#F9C84E"),
            outset: .3em,
            radius: 3pt,
            text("A4 (Schwerw.)", size:9pt, fill: black,)
        )
        h(3pt)
    } else if(rating == "A5") {
        h(3pt)
        box(
            fill: rgb("#FD9891"),
            outset: .3em,
            radius: 3pt,
            text("A5 (Kritisch)", size:9pt, fill: black,)
        )
        h(3pt)
    } else if(rating == "W1") {
        h(3pt)
        box(
            fill: rgb("#B3DF72"),
            outset: .3em,
            radius: 3pt,
            text("W1 (Sehr unwsl.)", size:9pt, fill: black,)
        )
        h(3pt)
    } else if(rating == "W2") {
        h(3pt)
        box(
            fill: rgb("#8FB8F6"),
            outset: .3em,
            radius: 3pt,
            text("W2 (Unwsl.)", size:9pt, fill: black,)
        )
        h(3pt)
    } else if(rating == "W3") {
        h(3pt)
        box(
            fill: rgb("#D8A0F7"),
            outset: .3em,
            radius: 3pt,
            text("W3 (Plausibel)", size:9pt, fill: black,)
        )
        h(3pt)
    } else if(rating == "W4") {
        h(3pt)
        box(
            fill: rgb("#F9C84E"),
            outset: .3em,
            radius: 3pt,
            text("W4 (Wsl.)", size:9pt, fill: black,)
        )
        h(3pt)
    } else if(rating == "W5") {
        h(3pt)
        box(
            fill: rgb("#FD9891"),
            outset: .3em,
            radius: 3pt,
            text("W5 (Sehr wsl.)", size:9pt, fill: black,)
        )
        h(3pt)
    } else {
        if(rating <= 4) {
            box(inset: -2pt,)[
                #circle(
                    radius: 12pt,
                    inset: 0pt,
                    fill: rgb("#B3DF72"),
                )[
                    #set align(center + horizon)
                    #rating
                ]
            ]
        } else if(rating <= 6) {
            box(inset: -2pt,)[
                #circle(
                    radius: 12pt,
                    inset: 0pt,
                    fill: rgb("#F9C84E"),
                )[
                    #set align(center + horizon)
                    #rating
                ]
            ]
        } else {
            box(inset: -2pt,)[
                #circle(
                    radius: 12pt,
                    inset: 0pt,
                    fill: rgb("#FD9891"),
                )[
                    #set align(center + horizon)
                    #rating
                ]
            ]
        }
        
    }
}

//
//  CONTENT
// 

= Einleitung
== Zweckbestimmung
Zweck dieses Dokuments ist es, strukturierte die Risiken, die durch die Nutzung einer Merkhilfe im Einsatz entstehen können, zu sammeln, zu bewerten und anschließend geeignete Mitigationsmaßnahmen zu definieren. 
Dadurch soll das Risiko, dass durch die Nutzung der Merkhilfe entsteht auf ein akzitables Restrisiko reduziert werden.

Allgemein ist festzuhalten, dass Anwendungsfehler von Arzneimitteln, insbesondere Dosierungsfehler eine häufige Quelle von Schäden in der (Notfall-)Medizin ist und eine konsequente Nutzung von Merkhilfen von modernen CRM-Ansätzen explizit gefordert wird. Eine konsequente Nutzung einer Merkhilfe stellt daher für sich schon eine Risikoreduktionsmaßnahme dar. Dennoch können schlecht aufbereitete oder fehlerhafte Merkhilfen zu einer Risikovermehrung beitragen - daher ist eine strukturierte Betrachtung um so wichtiger.

== Methodik
Ausgehend von Kategorien werden mögliche Ereignisse, die eine Gefahr für die Gesundheit oder das Leben von Patient*innen darstellen, erarbeitet und diese anschließend systematisch hinsichtlich Schadensausmaß und Eintrittswahrscheinlichkeit bewertet.

=== Fehlerkategorien
- Fehler/Problem bei Erstellung
  - Flüchtigkeitsfehler
  - Verständnisfehler
  - Technische Fehler
- Fehler/Problem bei der Anwendung
  - Indikationsfehler
  - Dosierungsfehler
  - Applikationsfehler
  - Umsetzungsprobleme

=== Risikobewertung
Die Bewertung erfolgt stehts nach dem Einfehlerprinzip. D.h. es wird ein einzelner Fehler definiert und dieser bewertet. Insbesondere bei der Bewertung des Schadensausmaßes bedeutet dies, dass davon ausgegangen werden kann, dass nach Fehlereintritt vor Ort ein*e ordentliche*r und gewissenhafte*r Notfallsanitäter*in anwesend ist.

Zur Veranschaulichung soll folgendes Beispiel dienen: Aufgrund eines Tippfehlers in einer AML-Merkhilfe wird einem krampfenden Patienten eine Überdosis eines Benzodiazepins verabreicht. Der Patient wird dadurch atemdepressiv.
Grundsätzlich kann ein Patient durch eine unerkannte Atemdepression schwere hypoxische Hirnschäden bis hin zum Tod erleiden, das für eine Schadensausmaß-Bewertung #riskrating("A5") sprechen würde.
Ist aber ein*e ordentliche*r und gewissenhafte*r Notfallsanitäter*in anwesend, kann davon ausgegangen werden, dass die Atemdepression erkannt und durch eine (assistierte) BEatmung behandelt wird. Daher ist die korrekte Bewertung #riskrating("A3").

Weiter wird angenommen, dass die anwendenden Notfallsanitäter*innen im Zuge ihrer Ausbildung bzw. Fortbildung die relevanten AML-Algorithmen erlernt haben. Das bedeutet, dass zwar insb. detaillierte Inidkationen/Kontraindikationen oder Dosierungen die z.B. auf einer Merkhilfe aufgeführt werden im Einsatzfall unhinterfragt übernommen werden, die handelnden Personen aber die grundlegenden (patho-)physiologischen und pharmakologischen hinter den Wirkstoffen kennen und daher auch gravierende Fehler in einem Dokument (z.B. Epinephrin i.v. außerhalb des Reanimationssettings) erkennen können.

====  Bewertung des Schadensausmaßes
- #riskrating("A1") - Kurzzeitiges Unwohlsein oder leichter Schmerz, NRS <=3
- #riskrating("A2") - Vorübergehendes Unwohlsein oder Schmerzen <= 5
- #riskrating("A3") - reversibles Unwohlsein, reversible Gesundheitsbeeinträchtigung oder Schmerzen >= 6
- #riskrating("A4") - reversible schwerwiegende Gesundheitsbeeinträchtigung
- #riskrating("A5") - Tod, irreversible schwerwiegende Gesundheitsbeeinträchtigung

==== Bewertung der Eintrittswahrscheinlichkeit (TODO)
- #riskrating("W1") - Noch nie passiert/Eintritt unplausibel
- #riskrating("W2") - Unwahrschienlich aber vorstellbar
- #riskrating("W3") - Möglich, aber nicht üblich, >= 2 %
- #riskrating("W4") - Ist schon passiert, wird wieder passieren, >= 10 %
- #riskrating("W5") - passiert regelmäßig, >= 30%

#linebreak()
Aus dieser Bewertung ergibt sich für jedes Ereignis eine Risikoziffer durch Multiplikation von Schadensausmaß mit Eintrittswahrscheinlichkeit.

Sowohl die Erarbeitung & Bewertung der Ereignisse, als auch die Erarbeitung der Mitigationsmaßnahmen werden von Personen mit einschlägiger Erfahrung durchgeführt. Für jede mitarbietende PErson muss diese einschlägige Erfahrung begründet werden. 

Im Prozess werden begleitend immer wieder weitere fachkundige Personen beratend hinzugezogen (Als Inputgeber, in Form von Reviews oder für spezifischen Konsultationen).

== Definition von Mitigationsmaßnahmen

Anschließend werden für Fehler mit inakzeptablem Risiko mögliche Mitigationsmaßnahmen definiert, die in der weiteren Erstellung berücksichtigt werden.

Als Grundprinzip gilt: Eine einzelne Mitigationsmaßnahme kann entweder die Eintrittswahrscheinlichkeit oder das Schadensausmaß um eine Stufe senken. Wird von diesem Prinzip abgewichen, muss dies begründet werden.

Obwohl das Ziel immer eine weitestmögliche Risikoreduktion ist, gelten Risiken mit einer Risikoziffer

- ≤ 6 als bedingt akzeptabel (v.a. wenn mögliche weitere Mitigationsmaßnahmen unverhältnismäßig wären und eine schlüssige Argumentation vorgeführt werden kann), und 

- ≤ 4 als akzeptabel.

Ergänzend zu erwähnen ist, dass eine Mitigationsmaßnahme ihre Sinnhaftigkeit nicht ausschließlich aus der erreichten Risikoreduktion begründet. Eine Maßnahme kann die Auftrittswahrscheinlichkeit oder das Schadensausmaß nur in einem so geringfügigen Ausmaß reduzieren, dass keine Reduktion der Bewertung möglich ist, aber dennoch für eine strukturelle Verbesserung bedeuten.

#pagebreak()
= Analyse
=== Fehlerquellen
#{
    show outline.entry: it => link(
        it.element.location(),
        it.indented("- ", it.body())
    )
    outline(
        title: none,
        target: <analysis>,
        depth: 4
    )
}

#pagebreak()
== Fehler/Problem bei Erstellung <analysis>
=== Flüchtigkeitsfehler <analysis>
==== Patient*innenschaden aufgrund von Falschangabe durch Tippfehler (Alters-/Gewichtsgrenzen, Indikation, Kontraindikation, Dosisangabe, Wiederholungen, ...) <analysis>
Unter Ausschluss von gänzlichen Fehlangaben (z.b. falsches Medikament bei einem Algorithmus, Dosierungen die unerwartet mehrere Ampullen erfordern, ...), die ein*e fachkompetente Notfallsanitäter*in erkennen muss sowie der Annahme von sorgfältigem Arbeiten gibt es sehrwohl einige Fehlangaben die schwerwiegende Gewsunheitsbeeinträchtigungen verursachen können (Atemdepression durch Benzodiazepine, starke Kreislaufbeschwerden durch Urapidil, ...) aber diese sollten durch ein*e fachkompetente Notfallsanitäter*in erkenn- und behandelbar sein. Basierend auf dieser Annahme wird das Schadensausmaß als #riskrating("A4") bewertet.

Tippfehler sind ohne weitere Kontrollmaßnahmen, insbesondere bei Zahlen als #riskrating("W5") zu bewerten.

#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung],
    [#riskrating("A4")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    Trennung von Informationsstrukturierung (Zusammentragen von Informationen aus verschiedenen Quellen mit Quellenverweisen und Übersetzung in CRM taugliche Struktur) und Setzen der Informationen (Formatieren & Layouting der Information für die Anwendung in Stressituationen inkl. tlw. notwendiger Verkürzung von Information)],
    [#riskrating("A4")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    Review von strukturierter Information durch zweite Person],
    [#riskrating("A4")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    Abgleich des finalen Dokuments mit strukturierten Informationen],
    [#riskrating("A4")], [*↓* #riskrating("W4")], [#riskrating(16)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    Review des finalen Dokuments durch zweite Person],
    [#riskrating("A4")], [*↓* #riskrating("W3")], [#riskrating(12)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    Strukturiertes Review auf des finalen Dokuments mit einem zweitlichen Abstand von min. 2 Wochen inkl. Vergleich mit mehreren Quellen (Flowchart BV, Tabelle BV, Tabelle Gruppe Linz) durch 3 gleichzeitig anwesende Personen],
    [#riskrating("A4")], [*↓* #riskrating("W2")], [#riskrating(8)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    Unstrukturiertes Review durch Gruppe aus min. 5 Beta-Tester],
    [#riskrating("A4")], [*↓* #riskrating("W1")], [#riskrating(4)],
)

==== Patient*innenschaden aufgrund von fehlender Angabe (Alters-/Gewichtsgrenzen, Indikation, Kontraindikation, Dosisangabe, Wiederholungen, ...) <analysis>
Eine fehlende Indikation führt ggf. zu einer Nichtanwendung einer AML, 
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung],
    [#riskrating("A4")], [#riskrating("W4")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

=== Verständnisfehler <analysis>
==== Fehlinterpretation der Bundeslehrmeinung <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Fehlinterpretation von lokalen Protokollen <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

=== Technische Fehler <analysis>
==== Element durch Layoutfehler nicht sichtbar/auf falscher Seite <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Bedeutungsänderung durch ungünstigen Zeilenumbruch <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Fehlerhafte Merkhilfe durch falsche Druckreihenfolge <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

#pagebreak()
== Fehler/Problem bei der Anwendung <analysis>
=== Indikationsfehler <analysis>
==== Unklare/Missverständliche Indikationsangabe <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Unklare/Missverständliche Kontrainikationsangabe <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Kontraindikation Wirkstoff vs. Kontraindikation Algorithmus nicht unterscheidbar <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

=== Dosierungsfehler <analysis>
==== Unklare/missverständliche Dosierungsangabe <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Dosierungsverwechslung (zwischen Arzneimitteln) <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Dosierungsverwechlsung (zwischen Altersgruppen) <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Dosierungsfehler durch unterschiedliche Medikamentenkonzentrationen <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

=== Applikationsfehler <analysis>
==== Unklare/missverständliche Applikationsform <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Unklare Algorithmusspezifische Applikationsabläufe <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

=== Nutzungsfehler <analysis>
==== Arzneimittel nicht zuordenbar (Handelsname ↔ Wirkstoff) <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Fehlende Notarztalarmierung (Verwechslung Alarmiere vs. Verständige) <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Algorithmus nicht auffindbar <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Priorisierung der Arzneimittel unklar <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Fehlende/fälschliche Wiederholung <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Nichtnutzung Merkhilfe aufgrund schlechter Handhabung  <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Fehlanwendung Unklare Abkürzungen <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)

==== Unvollständige Anwendung aufgrund von übersehenen weiteren Seiten (umblättern) <analysis>
#table(
    columns: (1fr, auto, auto, auto),
    align: (x,y) => if x>0 {left + horizon} else if y==0 {left + horizon} else {left + top},
    stroke: none,
    gutter: 0pt,

    [Initialbewertung (TODO)],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(20)],

    [#underline("Mitigationsmaßnahme") #linebreak()
    TODO],
    [#riskrating("A5")], [#riskrating("W5")], [#riskrating(25)],
)