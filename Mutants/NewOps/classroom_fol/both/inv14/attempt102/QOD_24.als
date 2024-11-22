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
(all s: (one Person) {
((((((Class))->(s->((Group)))) in Groups) && ((((Person))->((Class))) in Teaches)) => ((((Person))->s) in Tutors))
})
}





