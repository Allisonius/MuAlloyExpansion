module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv6[] {
(lone e: (one Event) {
(lone ((State.trans).e))
})
}





