module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (File - Trash) {
(((f.link) in Trash) => (no (link.f)))
})
}





