module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {

}
pred isLinked[f: File] {
(some g: (one File) {
((g->f) in link)
})
}