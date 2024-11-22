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
(some t: (one Teacher) {
((((((Class))->(((Student))->((Group)))) in Groups) && ((((Class))->(t->((Group)))) in Groups)) => ((t->((Student))) in Tutors))
})
}





