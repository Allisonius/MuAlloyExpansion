module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv6[] {
(one e: (one Event) {
(one s: (one State) {
(e in (s.(~(Init.trans))))
})
})
}





