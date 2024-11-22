module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some f: (one File) {
(all l: (one (f.link)) {
(no l)
})
})
}