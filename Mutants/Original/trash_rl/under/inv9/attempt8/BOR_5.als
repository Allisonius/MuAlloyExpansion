module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(no disj l1,l2: (one (File.link)) {
(l1 !in l2)
})
}





