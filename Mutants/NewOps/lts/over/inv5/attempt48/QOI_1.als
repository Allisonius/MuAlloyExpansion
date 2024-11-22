module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all var123456 : State { ((({ state: (one var123456),event: (one Event) {
(some (event.(state.trans)))
} }).(~({ state: (one var123456),event: (one Event) {
(some (event.(state.trans)))
} }))) = (univ->univ))})
}





