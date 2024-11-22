module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv3[] {
(lone t: (one Trash),p: (one Protected),f: (one File) {
(((t->f) in link) => ((p->f) !in link))
})
}