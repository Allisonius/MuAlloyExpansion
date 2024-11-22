module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(all var123456 : Node { (var123456 !in (var123456.(*adj)))})
}





