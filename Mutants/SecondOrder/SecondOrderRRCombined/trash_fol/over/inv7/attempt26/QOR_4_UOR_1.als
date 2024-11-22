module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no x: (one File),y: (one File) {
(((x->y) in link) => ((x !in Trash) && (y !in Trash)))
})
}