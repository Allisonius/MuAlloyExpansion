module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv3[] {
((all var123456 : Trash { (File = (var123456 & Protected))}) && (some Trash))
}





