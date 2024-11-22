module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some var123456 : univ { (no (((link.var123456) + (var123456.link)) & Trash))})
}





