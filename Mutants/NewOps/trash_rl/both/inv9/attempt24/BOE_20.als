module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f1,f2: (one File) {
(no ((f2.(^link)) - (f1.link)))
})
}





