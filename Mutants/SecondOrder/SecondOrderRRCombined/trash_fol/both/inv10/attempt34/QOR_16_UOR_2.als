module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all l: (one (File.link)) {
((l in Trash) => (lone f: (one File) {
((f = l) && (l in Trash))
}))
})
}