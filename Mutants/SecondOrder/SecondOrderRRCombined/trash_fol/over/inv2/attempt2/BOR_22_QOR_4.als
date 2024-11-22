module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(no t: (one File) {
((t !in Trash) && ((Trash') = (Trash + t)) && ((File') !in File) && ((Protected') = Protected))
})
}