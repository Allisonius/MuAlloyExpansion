module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
((is_link[((File))]) => (((File)) !in Trash))
}
pred is_link[f: File] {
(some g: (one File) {
((f->g) in link)
})
}





