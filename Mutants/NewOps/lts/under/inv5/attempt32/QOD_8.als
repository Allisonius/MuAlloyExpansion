module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some s2,s3: (one State) {
(((((State))->(((Event))->s2)) in trans) => ((((State))->(((Event))->s2)) in trans))
})
}





