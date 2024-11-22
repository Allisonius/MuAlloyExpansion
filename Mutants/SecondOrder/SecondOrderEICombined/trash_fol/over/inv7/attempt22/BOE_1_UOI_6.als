module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f,g: (one File) {
((after ((f !in Trash) && (g !in Trash))) => ((f->g) in link))
})
}