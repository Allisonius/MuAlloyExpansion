module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(one f: (one File) {
((before (((f.link) in Trash) && (f !in Protected))) => (f in Trash))
})
}