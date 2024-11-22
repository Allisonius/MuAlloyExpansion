module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f,f1: (File - Protected) {
((((f->f1) in link) && (f !in Trash)) => (f1 !in Trash))
})
}





