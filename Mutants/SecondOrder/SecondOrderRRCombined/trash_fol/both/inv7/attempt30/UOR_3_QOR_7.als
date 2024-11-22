module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some f: (one File) {
(some l: (one (f.link)) {
((f->l) in link)
})
})
}