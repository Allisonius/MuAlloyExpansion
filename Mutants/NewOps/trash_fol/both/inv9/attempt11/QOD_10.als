module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all y,z: (one File) {
(((z != y) && ((((File))->y) in link)) => ((((File))->z) !in link))
})
}





