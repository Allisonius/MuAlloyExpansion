module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(no e: (one Event) {
((some (e.(Init.trans))) => (some ((e->Init).trans)))
})
}





