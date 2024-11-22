module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {

}
pred isLinked[f1: File] {
(all f2: (one File) {
(link in (f1->f2))
})
}