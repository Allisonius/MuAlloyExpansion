module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(((((((File))->((File))) + (((File))->((File)))) in link) => (((File)) = ((File)))) && (all f: (one File) {
(lone (f.link))
}))
}





