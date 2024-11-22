module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv4[] {
((File = (Trash + Protected)) && (no var123456 : Trash { (no (var123456 & Protected))}))
}





