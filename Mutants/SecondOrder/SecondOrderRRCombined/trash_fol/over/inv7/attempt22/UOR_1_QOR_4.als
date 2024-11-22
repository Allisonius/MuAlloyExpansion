module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no f,g: (one File) {
(((f->g) in link) => ((f !in Trash) && (g !in Trash)))
})
}