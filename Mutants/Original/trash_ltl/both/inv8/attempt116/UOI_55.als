module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(all f: (one File) {
((isLink[f]) => (eventually ((f.link) in Trash)))
})
}
pred isLink[f: File] {
(some g: (one File) {
(eventually ((g->f) in link))
})
}





