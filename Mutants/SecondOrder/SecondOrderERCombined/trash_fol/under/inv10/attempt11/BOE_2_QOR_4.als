module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(no f: (one File) {
(all l: (one (f.link)) {
((Trash in l) => (all li: (one l) {
(li in Trash)
}))
})
})
}