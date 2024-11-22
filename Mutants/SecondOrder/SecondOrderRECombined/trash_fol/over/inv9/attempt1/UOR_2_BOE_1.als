module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f1,f2: (one File) {
(((f1.link) in f2) && (no (f2.link)))
})
}