module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv3[] {
((File = Trash) && (all var123456 : Trash { (some var123456)}))
}





