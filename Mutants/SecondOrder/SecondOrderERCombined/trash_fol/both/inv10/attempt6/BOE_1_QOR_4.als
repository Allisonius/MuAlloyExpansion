module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(no x,y: (one File) {
((y in Trash) => ((x->y) !in link))
})
}