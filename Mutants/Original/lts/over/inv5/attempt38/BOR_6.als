module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s1,s2,s3: (one State) {
((s3.(~(s1.trans))) != (s3.(~(s2.trans))))
})
}





