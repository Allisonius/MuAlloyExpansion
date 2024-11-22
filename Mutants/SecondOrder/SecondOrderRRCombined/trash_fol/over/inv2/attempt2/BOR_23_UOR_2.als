module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(all t: (one File) {
((t !in Trash) && ((Trash') = (Trash + t)) && ((File') = File) && ((Protected') != Protected))
})
}