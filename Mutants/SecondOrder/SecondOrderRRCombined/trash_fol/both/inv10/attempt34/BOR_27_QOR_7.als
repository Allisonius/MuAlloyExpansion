module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some l: (one (File.link)) {
((l in Trash) => (all f: (one File) {
((f = l) && (l != Trash))
}))
})
}