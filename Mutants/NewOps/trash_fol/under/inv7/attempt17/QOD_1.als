module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some lk: (one File) {
(((((File))->lk) in link) => ((((File)) !in Trash) && (lk !in Trash)))
})
}





