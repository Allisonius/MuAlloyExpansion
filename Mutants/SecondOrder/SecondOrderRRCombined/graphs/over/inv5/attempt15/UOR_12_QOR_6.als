module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(one n: (one Node) {
(one (n.(*adj)))
})
}