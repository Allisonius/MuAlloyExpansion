module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone x: (one File) {
(some y: (one File) {
((x in Trash) || ((y = Trash) => ((x->y) !in link)))
})
})
}