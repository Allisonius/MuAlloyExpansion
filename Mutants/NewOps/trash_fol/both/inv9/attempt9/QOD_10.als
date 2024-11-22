module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(some f1: (one File) {
((((File)) != f1) && ((((File)).link) !in (f1.link)))
})
}





