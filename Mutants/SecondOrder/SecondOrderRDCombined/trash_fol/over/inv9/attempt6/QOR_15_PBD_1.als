module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {

}
pred isLink[f: File] {
(one g: (one File) {
((g->f) in link)
})
}