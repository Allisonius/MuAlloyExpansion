module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no f,g: (one Protected) {
(((f.link) = g) => (g !in Trash))
})
}





