module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(((File.link) in Trash) => (all f: (one File) {
((f = (File.link)) && ((File.link) in Trash))
}))
}





