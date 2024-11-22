module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {

}
pred inv5[] {
((no (iden & adj)) && (all n: (set Node) {
(n !in (n.adj))
}))
}