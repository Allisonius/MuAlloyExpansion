module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
((((Event)).(((State)).trans)) = (((Event)).(((State)).trans)))
}





