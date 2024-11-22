module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f1,f2: (File - Protected) {
(no ((link.f1) & (link.f2)))
})
}





