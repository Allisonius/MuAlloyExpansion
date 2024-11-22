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
(all p: (one Student) {
((((((Class))->(p->((Group)))) in Groups) && ((((Teacher))->((Class))) in Teaches)) => ((((Teacher))->p) in Tutors))
})
}





