module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f1: (one File) {
((f1 != ((File))) && ((((File)).link) != f1) && ((f1.link) = ((File))))
})
}





