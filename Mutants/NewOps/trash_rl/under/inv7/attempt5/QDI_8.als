module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (File - Protected) {
(((f.link) != none) => ((f.link) !in Trash))
})
}





