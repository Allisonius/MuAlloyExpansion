module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(one n1: (one Node) {
(((n1.(^adj)) :> Node) = Node)
})
}