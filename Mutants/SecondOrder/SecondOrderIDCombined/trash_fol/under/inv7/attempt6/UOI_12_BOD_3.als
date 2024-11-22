module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f,x: (one File) {
(after ((f !in Trash) || (x !in Trash)))
})
}