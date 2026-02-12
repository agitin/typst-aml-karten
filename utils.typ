// Ein file mit nützlichen Funktionen, die in mehreren Karten verwendet werden können

#let handelsname(name) = text(
  [#h(1fr) #name#super("®")],
  weight: "thin",
  size: 10pt,
)

#let checkbox-list(items) = {
  items.map(item => box(
    [☐ #item],
    width: auto,
  )).join(h(0.5em))
}