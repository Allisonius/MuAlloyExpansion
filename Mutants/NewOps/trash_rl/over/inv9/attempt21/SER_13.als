module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f,l: (one Protected) {
(((f->l) in link) => (l !in (File.link)))
})
}





