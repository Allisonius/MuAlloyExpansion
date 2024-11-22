module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some y: (one File) {
((y in Trash) => ((((File))->y) !in link))
})
}





