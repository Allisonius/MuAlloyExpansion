module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv6[] {
(one s: (one State) {
(all e: (one Event) {
(e in (s.(~(Init.trans))))
})
})
}





