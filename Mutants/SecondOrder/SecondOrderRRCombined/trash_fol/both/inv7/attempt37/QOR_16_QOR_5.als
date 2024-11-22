module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone f: (one File) {
((f in Trash) => (lone f2: (one File) {
((f->f2) in link)
}))
})
}