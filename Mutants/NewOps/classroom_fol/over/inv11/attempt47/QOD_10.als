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
pred inv11[] {
(some t: (one Teacher) {
(((((Class))->(((Person))->((Group)))) in Groups) => (((((Class))->(t->((Group)))) in Groups) && ((t->((Class))) in Teaches)))
})
}





