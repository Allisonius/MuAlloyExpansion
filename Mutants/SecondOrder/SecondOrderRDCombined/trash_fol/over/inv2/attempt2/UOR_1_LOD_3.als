module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(all t: (one File) {
((t !in Trash) && ((File') = File) && ((Protected') = Protected))
})
}