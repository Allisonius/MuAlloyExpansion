module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s1,s2: (State - Init),e: (one Event) {
((e.(s1.trans)) = (e.(s2.trans)))
})
}





