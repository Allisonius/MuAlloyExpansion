module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all fl: (one (File.link)) {
(one f: (one File) {
(((fl in Trash) && ((fl->f) in link)) => (f in Trash))
})
})
}





