module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no f: (File - Trash) {
((f in Trash) => ((f.link) != none))
})
}





