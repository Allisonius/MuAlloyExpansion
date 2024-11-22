module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv3[] {
((File = (Trash + Protected)) && (no var123456 : Protected { (no (Trash & var123456))}))
}





