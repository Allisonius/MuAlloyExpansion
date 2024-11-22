module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(no var123456 : Init { (let t = ({ x,y: (one State) {
(some z: (one Event) {
((x->(z->y)) in trans)
})
} }) {
((some (^t)) => (some (var123456.(~(^t)))))
})})
}





