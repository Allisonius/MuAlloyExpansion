module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all x: (one File) {
(((((File)) != ((File))) && ((x->((File))) in link)) => ((x->((File))) !in link))
})
}





