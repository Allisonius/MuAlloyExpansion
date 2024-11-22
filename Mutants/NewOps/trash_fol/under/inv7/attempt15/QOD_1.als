module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some y: (one File) {
(((((File))->y) in link) => ((((File)) !in Trash) && (y !in Trash)))
})
}





