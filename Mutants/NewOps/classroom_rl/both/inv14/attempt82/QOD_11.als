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
(((((Teacher))->((Class))) in Teaches) => (all s: (one Student) {
(((((Class))->(s->Group)) in Groups) => (s in (((Teacher)).(Tutors :> Student))))
}))
}





