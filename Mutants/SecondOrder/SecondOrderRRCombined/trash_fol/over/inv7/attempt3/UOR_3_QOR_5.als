module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone f: (one File) {
(no ((link.f) + Trash))
})
}