module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let ss = ({ x,y: (one State) {
((y in Init) && (some ((y.trans).x)))
} }) {
(ss = (~(*ss)))
})
}





