module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some var123456 : Trash { ((some (link.File)) => ((link.File) !in var123456))})
}





