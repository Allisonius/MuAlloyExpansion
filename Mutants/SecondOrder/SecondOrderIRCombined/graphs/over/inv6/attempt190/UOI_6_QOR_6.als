module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one n: (one Node) {
(after (((Node in (n.(^adj))) && (Node in ((^adj).n))) || (one Node)))
})
}