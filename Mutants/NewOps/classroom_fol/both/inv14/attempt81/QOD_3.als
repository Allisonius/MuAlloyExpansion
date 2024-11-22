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
(all ps,t: (one Person) {
((((((Class))->(ps->((Group)))) in Groups) && ((t->((Class))) in Teaches)) => ((t->ps) in Tutors))
})
}





