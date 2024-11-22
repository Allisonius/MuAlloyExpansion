module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {

}
pred isLink[f: File] {
(all g: (some File) {
((f->g) in link)
})
}