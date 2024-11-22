module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(lone l: (one (File.link)) {
((l in Trash) => (all l1: (one l) {
(l1 in Trash)
}))
})
}