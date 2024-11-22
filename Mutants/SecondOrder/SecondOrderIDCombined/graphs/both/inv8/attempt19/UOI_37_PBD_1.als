module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {

}
pred inv5[] {
(before ((no (iden & adj)) && (all n: (one Node) {
(n !in (n.adj))
})))
}