module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
((all t: (one File) {
(always ((t !in Trash) && ((Trash') = (Trash + t))))
}) && ((File') = File) && ((Protected') = Protected))
}