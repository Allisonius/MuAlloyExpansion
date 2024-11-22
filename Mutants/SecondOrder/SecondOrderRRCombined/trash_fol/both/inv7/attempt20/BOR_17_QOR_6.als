module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f: (one File) {
((f !in Trash) => ((f.link) in Trash))
})
}