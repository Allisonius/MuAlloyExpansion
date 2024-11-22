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
(some s: (one Student) {
((((((Teacher))->((Class))) in Teaches) && ((((Class))->(s->((Group)))) in Groups)) => ((((Teacher))->s) in Tutors))
})
}





