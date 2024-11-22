module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv3[] {
(some t: (one Trash),p: (one Protected),f: (some File) {
((link in (t->f)) => ((p->f) !in link))
})
}