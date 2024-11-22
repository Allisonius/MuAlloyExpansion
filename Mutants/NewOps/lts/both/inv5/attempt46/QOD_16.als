module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some e: (one Event) {
((e in (((State)).(~(Init.trans)))) => (e in (((State)).(~(Init.trans)))))
})
}





