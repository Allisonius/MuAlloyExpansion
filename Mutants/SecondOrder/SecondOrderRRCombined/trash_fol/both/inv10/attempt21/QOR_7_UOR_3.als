module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some l: (one (File.link)) {
((l in Trash) => (no ((l.link) & Trash)))
})
}