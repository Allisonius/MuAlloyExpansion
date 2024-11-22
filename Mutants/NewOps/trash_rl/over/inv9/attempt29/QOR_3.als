module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(lone f1,f2: (one File) {
(((f1 & (f1.link)) = none) && ((f2 & (f2.link)) = none) && (!((f1.link) = (f2.link))))
})
}





