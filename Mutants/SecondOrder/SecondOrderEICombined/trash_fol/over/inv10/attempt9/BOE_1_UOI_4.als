module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all l: (one (File.link)) {
(before ((Trash in l) && ((l.link) in Trash)))
})
}