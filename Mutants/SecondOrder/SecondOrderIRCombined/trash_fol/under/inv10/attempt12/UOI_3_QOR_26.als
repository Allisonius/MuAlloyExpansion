module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one File) {
(all l: (one (f.(^link))) {
((l in Trash) => (some li: (one (l.link)) {
(li in Trash)
}))
})
})
}