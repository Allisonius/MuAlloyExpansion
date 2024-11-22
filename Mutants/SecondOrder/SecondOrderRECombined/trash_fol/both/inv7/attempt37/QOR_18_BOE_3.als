module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
((f in Trash) => (some f2: (one File) {
(link in (f->f2))
}))
})
}