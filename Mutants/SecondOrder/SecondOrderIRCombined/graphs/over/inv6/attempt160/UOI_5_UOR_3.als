module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all e1: (one Node) {
(Node in (((e1.(*(^adj))) + ((^adj).e1)) - e1))
})
}