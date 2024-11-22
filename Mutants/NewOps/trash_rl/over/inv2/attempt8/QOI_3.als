module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
((no var123456 : File { (var123456 = (Protected + Trash))}) && (no (File & Protected)))
}





