module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv8[] {
(all l: (one (File.(^link))) {
(Trash !in l)
})
}