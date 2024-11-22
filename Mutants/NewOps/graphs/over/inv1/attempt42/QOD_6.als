module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some ad: (one (((Node)).adj)) {
((((Node)) in (ad.adj)) && ((ad.adj) in ((Node))))
})
}





