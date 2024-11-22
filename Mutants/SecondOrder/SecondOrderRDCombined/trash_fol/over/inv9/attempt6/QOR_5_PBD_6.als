module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(lone g,x: (one File) {
((!(isLink[g])) && (!(isLink[x])))
})
}
pred isLink[f: File] {

}