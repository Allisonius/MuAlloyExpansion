module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(no disj f1,f2: (File - Trash) {
((f1.link) = (f2.link))
})
}





