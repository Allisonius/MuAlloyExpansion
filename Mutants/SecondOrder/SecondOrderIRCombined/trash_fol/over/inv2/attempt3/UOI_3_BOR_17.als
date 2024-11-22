module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(once ((all t: (one File) {
((t !in Trash) && ((Trash') in (Trash + t)))
}) && ((File') = File) && ((Protected') = Protected)))
}