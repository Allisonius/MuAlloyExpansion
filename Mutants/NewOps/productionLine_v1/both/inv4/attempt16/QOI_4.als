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
(all var123456 : Component { (((var123456.parts).position) in (ordering/prevs[((var123456.position).(ordering/next[]))]))})
}





