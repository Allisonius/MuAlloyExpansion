module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
(all i1,i2: (State + Init) {
(i1 = i2)
})
}





