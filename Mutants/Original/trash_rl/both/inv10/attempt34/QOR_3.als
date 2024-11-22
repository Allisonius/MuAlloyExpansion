module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(lone f: (one File) {
((some ((f.(^link)) & Trash)) => (f in Trash))
})
}





