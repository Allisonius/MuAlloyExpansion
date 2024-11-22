module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all x,y: (one File) {
(((y->x) in link) => ((Trash !in x) && (y !in Trash)))
})
}