module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all a: (one (((Node)).adj)) {
((a in (((Node)).adj)) => (((Node)) in (a.adj)))
})
}





