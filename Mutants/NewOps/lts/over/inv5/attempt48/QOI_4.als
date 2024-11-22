module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(no var123456 : Event { ((({ state: (one State),event: (one var123456) {
(some (event.(state.trans)))
} }).(~({ state: (one State),event: (one var123456) {
(some (event.(state.trans)))
} }))) = (univ->univ))})
}





