module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all fl: (one (File.link)) {
(some f: (one File) {
(f in Trash)
})
})
}





