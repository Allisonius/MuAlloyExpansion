module unknown
open util/integer [] as integer
open util/ordering [Position] as ordering
sig Position {}
sig Product {}
sig Component extends Product {
parts: (set Product),
position: (one Position)
}
sig Resource extends Product {}
sig Robot {
position: (one Position)
}
pred inv4[] {
(all c: (one Component) {
(all p: (one Product) {
((((c.position) in (ordering/nexts[(p.position)])) && ((p.position) in (ordering/prevs[(c.position)]))) => (p in (c.parts)))
})
})
}





