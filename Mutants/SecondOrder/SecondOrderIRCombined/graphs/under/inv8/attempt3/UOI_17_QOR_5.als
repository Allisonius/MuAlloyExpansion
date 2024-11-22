module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(lone a,b,c: (one Node) {
((((a->b) in adj) && ((a->c) in (*adj))) => ((a->b) in adj))
})
}