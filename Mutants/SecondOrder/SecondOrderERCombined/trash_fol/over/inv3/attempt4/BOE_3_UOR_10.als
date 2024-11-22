module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv3[] {
(some t: (some Trash),p: (one Protected),f: (one File) {
(((t->f) in link) => (link !in (p->f)))
})
}