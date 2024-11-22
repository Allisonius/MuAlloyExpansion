module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
((lone t: (one File) {
((Trash !in t) && ((Trash') = (Trash + t)))
}) && ((File') = File) && ((Protected') = Protected))
}