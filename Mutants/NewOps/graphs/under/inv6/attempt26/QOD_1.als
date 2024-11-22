module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n2: (one Node) {
(((Node)) in ((n2.(*adj)) + ((~(~adj)).((Node)))))
})
}





