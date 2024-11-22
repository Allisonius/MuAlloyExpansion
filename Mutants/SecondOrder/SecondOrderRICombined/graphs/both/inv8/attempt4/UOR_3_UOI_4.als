module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(inv5[])
}
pred inv5[] {
((no (iden & adj)) && (all n: (one Node) {
(n !in (n.(*adj)))
}))
}