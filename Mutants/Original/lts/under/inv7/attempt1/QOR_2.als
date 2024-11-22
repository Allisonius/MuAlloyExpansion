module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(lone e: (one Event) {
((some (e.(Init.trans))) => (some ((e->Init).trans)))
})
}





