module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(lone f1: (one File) {
(all f2: (one File) {f2 != f1 =>  {f2 != f1 =>  {
((f1.link) = f2)
}}})
})
}





