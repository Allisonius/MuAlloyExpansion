module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(no f1,f2,f3,f4: (one File) {
((f2->f3) !in link)
})
}