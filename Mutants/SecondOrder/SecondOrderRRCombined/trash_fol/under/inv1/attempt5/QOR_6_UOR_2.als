module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(one t: (one Trash),f: (one File) {
((f->t) !in link)
})
}