module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(lone t: (one Trash),f: (one File) {
((f->t) !in link)
})
}