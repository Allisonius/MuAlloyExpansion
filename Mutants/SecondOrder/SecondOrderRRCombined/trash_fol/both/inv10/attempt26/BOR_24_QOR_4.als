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
((l in Trash) => (f !in Trash))
})
})
}