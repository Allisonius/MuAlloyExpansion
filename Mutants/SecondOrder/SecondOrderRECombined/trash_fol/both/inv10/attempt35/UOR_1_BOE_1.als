module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one File) {
(all l: (one (f.link)) {
((all f: (one File) {
(f in Trash)
}) => (l in Trash))
})
})
}