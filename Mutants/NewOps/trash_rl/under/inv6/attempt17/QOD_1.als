module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some f1,f2: (one File) {
(((((((File))->f1) in link) && ((((File))->f2) in link)) => (f1 = f2)) || (((File)) = f1) || (((File)) = f2))
})
}





