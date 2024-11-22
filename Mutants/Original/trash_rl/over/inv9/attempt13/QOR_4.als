module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(one f1,f2: (one File) {
(no ((link.f1) & (link.f1)))
})
}





