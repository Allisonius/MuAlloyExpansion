module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(some t: (one Trash) {
(Trash !in 0)
})
}