module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(no a: (one Node) {
((a->a) in (*adj))
})
}