module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
((no var123456 : Init { (lone var123456)}) && (lone State))
}





