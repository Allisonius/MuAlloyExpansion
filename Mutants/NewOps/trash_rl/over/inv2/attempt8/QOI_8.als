module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
((some var123456 : Trash { (File = (Protected + var123456))}) && (no (File & Protected)))
}





