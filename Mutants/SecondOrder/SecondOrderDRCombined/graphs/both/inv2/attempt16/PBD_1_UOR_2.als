module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv2[] {

}
pred inv1[] {
(adj = (~adj))
}