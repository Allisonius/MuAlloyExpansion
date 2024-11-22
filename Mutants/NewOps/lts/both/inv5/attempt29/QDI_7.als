module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s1,s2: (State - Init) {
(one ((Event.(s1.trans)) & (Event.(s2.trans))))
})
}





