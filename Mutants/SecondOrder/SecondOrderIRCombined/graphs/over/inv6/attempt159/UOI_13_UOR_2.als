module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all e1: (one Node) {
((Node - e1) in ((e1.(*adj)) + ((*(^adj)).e1)))
})
}