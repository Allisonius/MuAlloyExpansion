module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv14[] {
(all s: (one Student) {
((s in ((((Class)).Groups).Group)) => (all t: (one ((Teaches.((Class))) :> Teacher)) {
(s in (t.Tutors))
}))
})
}





