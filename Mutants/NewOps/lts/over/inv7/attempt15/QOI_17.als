module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some var123456 : Init { (let ss = ({ x,y: (one State) {
((y in var123456) && (some ((y.trans).x)))
} }) {
(ss = (~ss))
})})
}





