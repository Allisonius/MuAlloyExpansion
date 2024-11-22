module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f: (one File) {
((f in Trash) <=> (no f2: (one File) {
((f->f2) in link)
}))
})
}