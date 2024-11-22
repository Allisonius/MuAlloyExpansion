module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some var123456 : File { (let x = ((var123456.link) & Trash) {
((x.link) in Trash)
})})
}





