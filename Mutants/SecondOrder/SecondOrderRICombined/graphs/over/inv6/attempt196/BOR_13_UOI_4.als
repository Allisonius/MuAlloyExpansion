module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n1: (one Node) {
(always ((((((^adj).n1) :> Node) + ((n1.(^adj)) :> Node)) in Node) && (some ((n1.adj) :> n1))))
})
}