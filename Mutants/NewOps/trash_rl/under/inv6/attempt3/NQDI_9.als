module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f: (one File) {
(lone g: (one File) {g != f =>  {g != f =>  {
((f.link) = g)
}}})
})
}





