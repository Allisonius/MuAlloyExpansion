module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some x,y: (some File) {
((x->y) in link)
})
}