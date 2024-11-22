module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv3[] {
(some t: (one Trash),p: (one Trash),f: (one File) {
(((t->f) in link) => ((p->f) !in link))
})
}





