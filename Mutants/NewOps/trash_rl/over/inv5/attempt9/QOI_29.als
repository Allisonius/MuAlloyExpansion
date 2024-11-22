module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(no var123456 : Protected { ((File & Trash) = (File - var123456))})
}





