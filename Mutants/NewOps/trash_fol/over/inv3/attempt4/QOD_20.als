module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv3[] {
(((((Trash))->((File))) in link) => ((((Protected))->((File))) !in link))
}





