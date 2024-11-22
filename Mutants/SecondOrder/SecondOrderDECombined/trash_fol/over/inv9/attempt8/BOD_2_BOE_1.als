module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f1,f2: (one File) {
(is_link[f1])
})
}
pred is_link[f: File] {
(some g: (one File) {
(link in (f->g))
})
}