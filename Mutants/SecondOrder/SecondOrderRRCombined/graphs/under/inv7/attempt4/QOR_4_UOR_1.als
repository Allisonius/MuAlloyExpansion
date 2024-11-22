module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(no n: (one Node) {
((Node.adj) in (n.(^adj)))
})
}