module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
((!(((File)) in (((File)).link))) && (!(((File)) in (((File)).link))) && (!((((File)).link) = (((File)).link))))
}





