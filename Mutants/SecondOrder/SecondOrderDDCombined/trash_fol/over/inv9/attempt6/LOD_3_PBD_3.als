module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all g,x: (one File) {
(!(isLink[g]))
})
}
pred isLink[f: File] {

}