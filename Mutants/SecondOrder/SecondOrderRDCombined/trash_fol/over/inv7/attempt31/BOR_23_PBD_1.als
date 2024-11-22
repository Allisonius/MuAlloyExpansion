module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {

}
pred isLinked[f: File] {
(some f2: (one File) {
(((f->f2) = link) => (f2 in Trash))
})
}