module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
((File = (Trash + Protected)) && (no var123456 : Protected { (no var123456)}))
}





