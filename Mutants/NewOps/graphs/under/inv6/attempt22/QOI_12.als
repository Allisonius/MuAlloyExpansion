module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((one Node) || (no var123456 : Node { (var123456 = ((var123456.(^adj)) + (var123456.(^(~adj)))))}))
}





