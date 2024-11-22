module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
((({ state: (one State),event: (one Event) {
(some (event.(state.trans)))
} }).(~({ state: (one State),event: (one Event) {
(some (event.(state.trans)))
} }))) != (univ->univ))
}





