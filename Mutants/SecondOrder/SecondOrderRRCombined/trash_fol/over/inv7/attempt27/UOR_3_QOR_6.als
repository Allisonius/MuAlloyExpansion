module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f: (one File) {
((isLink[f]) && (f !in Trash))
})
}
pred isLink[f: File] {
(some g: (one File) {
((f->g) in link)
})
}