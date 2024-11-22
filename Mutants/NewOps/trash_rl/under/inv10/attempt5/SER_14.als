module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(let x = ((File.link) & Protected) {
((x.link) in Trash)
})
}





