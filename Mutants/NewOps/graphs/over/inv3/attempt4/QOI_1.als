module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some var123456 : Node { (no (var123456.(*adj)))})
}





