module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(lone f: (one File) {
(all l: (one (f.link)) {
((l in Trash) => (lone li: (one (l.link)) {
(li in Trash)
}))
})
})
}