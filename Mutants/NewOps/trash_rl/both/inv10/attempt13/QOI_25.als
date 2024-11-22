module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(no var123456 : Trash { (no (((File.link) & var123456) - ((link.File) & var123456)))})
}





