module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (File & Protected) {
(((some (link.f)) && (f in Trash)) => ((f.link) in Trash))
})
}





