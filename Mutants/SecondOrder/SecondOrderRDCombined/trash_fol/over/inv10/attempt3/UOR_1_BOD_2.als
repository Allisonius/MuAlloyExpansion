module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,g: (one File) {
((f->g) in link)
})
}