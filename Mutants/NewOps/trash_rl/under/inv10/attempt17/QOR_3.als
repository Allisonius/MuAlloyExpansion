module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(one fl: (one (File.link)) {
(some f: (one File) {
(((fl in Trash) && ((fl->f) in link)) => (f in Trash))
})
})
}





