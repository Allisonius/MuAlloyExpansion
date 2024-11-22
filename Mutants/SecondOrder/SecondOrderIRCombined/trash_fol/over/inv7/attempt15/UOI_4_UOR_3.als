module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
(always (((f.link) !in Trash) && (no ((f.link) & Trash))))
})
}