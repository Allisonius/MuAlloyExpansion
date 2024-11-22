module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no f,g: (File & Protected) {
(((f.link) = g) => (g !in Trash))
})
}





