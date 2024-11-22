module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone f,g: (one File) {
(((f->g) in link) => ((f !in Trash) && (g !in Trash)))
})
}