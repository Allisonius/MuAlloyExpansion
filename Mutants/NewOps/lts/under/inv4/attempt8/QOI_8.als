module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(no var123456 : Init { ((State - var123456) in (var123456.(var123456->(State - var123456))))})
}





