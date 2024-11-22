module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all x: (one File) {
(all z: (one File) {
((((x->((File))) in link) && ((((File))->z) in link)) => (((File)) != z))
})
})
}





