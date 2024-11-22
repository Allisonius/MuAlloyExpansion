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
(some c: (one Class) {
((((Student)) in ((c.Groups).Group)) => (all t: (one ((Teaches.c) :> Teacher)) {
(((Student)) in (t.Tutors))
}))
})
}





