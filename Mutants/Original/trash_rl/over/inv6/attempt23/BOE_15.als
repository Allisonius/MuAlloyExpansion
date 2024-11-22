module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
((all f,f1,f2: (one File) {
((link in ((f->f1) + (f->f2))) => (f1 = f))
}) && (all f: (one File) {
(lone (f.link))
}))
}





