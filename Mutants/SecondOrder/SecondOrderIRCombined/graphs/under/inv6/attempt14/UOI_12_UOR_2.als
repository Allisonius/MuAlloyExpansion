module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
((some adj) => (Node in ((Node.adj) + ((^adj).Node))))
}