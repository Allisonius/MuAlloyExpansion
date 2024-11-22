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
pred inv3[] {
(all c: (one Component),p: (one Product),r: (one Robot),pos1,pos2: (one Position) {
(pos1 = pos2)
})
}





