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
(all c: (Component - Product),p: (one Product) {
((p in (c.parts)) => (p !in ((c.parts).(^parts))))
})
}





