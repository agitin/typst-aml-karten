// Ein file mit nützlichen Funktionen, die in mehreren Karten verwendet werden können

#let handelsname(name) = text(
  [#h(1fr) #name#super("®")],
  weight: "thin",
  size: 10pt,
)

#let checkbox-list(..items) = {
  items.pos().map(item => box[▢ #item]).join("    ")
}

// Diese Funktion (crossed) erstellt einen Block mit einem Kreuzmuster-Hintergrund (pat), für AML-Anwendungen die in Linz am RTW nicht verfügbar/nicht freigegeben sind. Zusätzlich wird die Tabellenfüllung für diesen Block auf "none" gesetzt, um sicherzustellen, dass die Kreuzmuster-Füllung sichtbar bleibt.
#let pat = tiling(size: (30pt, 30pt), relative: "parent")[
  #place(line(stroke: gray, start: (0%, 100%), end: (100%, 0%)))
  #place(line(stroke: gray, start: (0%, 0%), end: (100%, 100%)))
  #place(line(stroke: gray, start: (0%, 50%), end: (50%, 0%)))
  #place(line(stroke: gray, start: (50%, 0%), end: (100%, 50%)))
  #place(line(stroke: gray, start: (100%, 50%), end: (50%, 100%)))
  #place(line(stroke: gray, start: (0%, 50%), end: (50%, 100%)))
]

#let crossed(content) = {
  set table(
    fill: (_, y) => none,
  )
  block(
    fill: pat,
    inset: .5em,
    outset: .1em,
    content
  )
}

