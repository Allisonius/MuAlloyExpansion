module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
((all t: (one File) {
((t !in Trash) && ((Trash') = (Trash + t)))
}) && (some var123456 : File { ((var123456') = var123456)}) && ((Protected') = Protected))
}





