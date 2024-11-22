module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv3[] {
((all var123456 : Protected { (File = (Trash + var123456))}) && (no Protected))
}





