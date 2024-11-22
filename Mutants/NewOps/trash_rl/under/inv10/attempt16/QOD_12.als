module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one File) {
((((File.link) in Trash) && (((File.link)->f) in link)) => (f in Trash))
})
}





