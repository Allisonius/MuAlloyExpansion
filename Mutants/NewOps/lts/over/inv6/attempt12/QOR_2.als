module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv6[] {
(no e: (one Event) {
(some s: (one State) {
(e in (s.(~(Init.trans))))
})
})
}





