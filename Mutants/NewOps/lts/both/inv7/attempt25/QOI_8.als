module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some var123456 : Init { (let t = ({ x: (one State),y: (one State) {
(some ((x.trans).y))
} }) {
(var123456 in (var123456.(^t)))
})})
}





