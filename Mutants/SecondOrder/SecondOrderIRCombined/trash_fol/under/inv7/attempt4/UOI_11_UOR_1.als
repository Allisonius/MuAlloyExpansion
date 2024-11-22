module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all x,y: (one File) {
(((x->y) in link) => (eventually ((x !in Trash) || (y !in Trash))))
})
}