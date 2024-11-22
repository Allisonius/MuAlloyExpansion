module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
((no f: (one File) {
((f->f) !in link)
}) && ((link.(~link)) in iden))
}





