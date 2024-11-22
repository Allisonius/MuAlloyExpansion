module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(after ((all t: (one File) {
((t !in Trash) && ((Trash') != (Trash + t)))
}) && ((File') = File) && ((Protected') = Protected)))
}