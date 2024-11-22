module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all x,y,z: (one File) {
(once ((y->z) !in link))
})
}