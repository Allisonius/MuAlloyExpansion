module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
((all f: (File - Trash) {
((f->f) !in link)
}) && ((link.(~link)) in iden))
}





