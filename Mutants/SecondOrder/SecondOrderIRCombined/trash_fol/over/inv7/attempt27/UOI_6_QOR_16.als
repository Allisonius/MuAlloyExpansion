module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
(after ((isLink[f]) && (f !in Trash)))
})
}
pred isLink[f: File] {
(no g: (one File) {
((f->g) in link)
})
}