module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all ad: (one (((Node)).adj)) {
((#((((Node))->(ad.adj)) + ((ad.adj)->((Node))))) = 2)
})
}





