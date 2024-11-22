module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
((all t: (one File) {
(after ((t !in Trash) && ((Trash') = Trash)))
}) && ((File') = File) && ((Protected') = Protected))
}