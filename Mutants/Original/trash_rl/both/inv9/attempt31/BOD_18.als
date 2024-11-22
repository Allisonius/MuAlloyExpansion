module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all a,b: (one File) {
((a != b) => (no (b.link)))
})
}





