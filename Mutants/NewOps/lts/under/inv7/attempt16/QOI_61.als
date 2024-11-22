module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some var123456 : Init { (let adj = ({ x,y: (one State) {
(some e: (one Event) {
((x->(e->y)) in trans)
})
} }) {
((some (var123456.(^adj))) => (some (((var123456.(*adj)).(^adj)) & var123456)))
})})
}





