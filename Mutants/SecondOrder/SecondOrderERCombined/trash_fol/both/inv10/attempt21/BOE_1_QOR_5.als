module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(lone l: (one (File.link)) {
((no ((l.link) & Trash)) => (l in Trash))
})
}