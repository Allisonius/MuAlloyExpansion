module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some g,h: (one File) {
(((((File))->g) in link) => ((((File))->h) !in link))
})
}





