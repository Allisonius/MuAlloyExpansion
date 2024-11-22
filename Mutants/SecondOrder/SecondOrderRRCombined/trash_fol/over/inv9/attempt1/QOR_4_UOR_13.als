module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(no f1,f2: (one File) {
((f2 in (f1.link)) && (lone (f2.link)))
})
}