module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some var123456 : univ { ((({ state: (one State),event: (one Event) {
(some (event.(state.trans)))
} }).(~({ state: (one State),event: (one Event) {
(some (event.(state.trans)))
} }))) = (var123456->var123456))})
}





