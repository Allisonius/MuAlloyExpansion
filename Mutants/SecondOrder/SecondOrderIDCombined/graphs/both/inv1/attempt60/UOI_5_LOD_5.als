module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all v1,v2: (one Node) {
((eventually ((v1->v2) in adj)) => (v1 = v2))
})
}