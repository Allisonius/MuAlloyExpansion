module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some a: (set Node) {
((a in (a.(^adj))) && (!((a->a) in adj)))
})
}