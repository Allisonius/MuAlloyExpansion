module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
((f !in Trash) => (isLinked[f]))
})
}
pred isLinked[f1: File] {

}