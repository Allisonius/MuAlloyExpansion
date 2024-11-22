module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one (File.link)) {
((f in Trash) => (f in Trash))
})
}