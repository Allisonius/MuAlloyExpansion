module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(one f: (one File),p: (one Protected) {
((f !in Protected) && (f in Trash))
})
}