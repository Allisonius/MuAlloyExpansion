module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f1,f2,f3: (one File) {
(always (((f1->f2) in link) && (link !in (f2->f3))))
})
}