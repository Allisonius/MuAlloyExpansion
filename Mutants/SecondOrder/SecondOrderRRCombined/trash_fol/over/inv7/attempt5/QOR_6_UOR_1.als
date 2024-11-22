module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one x,y: (one File) {
(((x->y) in link) && (y !in Trash))
})
}