module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all var123456 : File { (lone (link.var123456))})
}





