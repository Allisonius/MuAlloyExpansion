module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all disj f,l: (one File) {
(((f->l) in link) => (l !in (File.link)))
})
}





