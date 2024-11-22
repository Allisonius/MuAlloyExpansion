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
(all disj c1,c2: (one Component) {
((some ((c1.parts) & (c2.(^parts)))) => ((c1.position) !in (c2.position)))
})
}





