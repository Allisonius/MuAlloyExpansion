module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all x: (one File) {
(all y,z: (one File) {
((eventually ((z != y) && (link in (x->y)))) => ((x->z) !in link))
})
})
}