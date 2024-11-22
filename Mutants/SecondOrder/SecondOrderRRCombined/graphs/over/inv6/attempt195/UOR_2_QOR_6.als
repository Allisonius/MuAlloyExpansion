module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(one n1: (one Node) {
((((((^adj).n1) :> Node) + ((n1.(^adj)) :> Node)) + ((n1.(^adj)) :> n1)) = Node)
})
}