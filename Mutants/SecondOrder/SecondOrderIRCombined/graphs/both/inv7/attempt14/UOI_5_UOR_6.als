module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(eventually ((some Node) || (one n: (one Node) {
((n.(*adj)) = Node)
})))
}