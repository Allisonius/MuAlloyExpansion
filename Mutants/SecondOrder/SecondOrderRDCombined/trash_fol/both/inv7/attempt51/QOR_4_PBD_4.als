module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no f: (one File) {
((isLinked[f]) => (f !in Trash))
})
}
pred isLinked[f: File] {

}