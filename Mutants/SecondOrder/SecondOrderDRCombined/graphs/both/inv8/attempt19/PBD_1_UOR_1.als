module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {

}
pred inv5[] {
((no (iden & adj)) && (all n: (one Node) {
(n !in (n.adj))
}))
}