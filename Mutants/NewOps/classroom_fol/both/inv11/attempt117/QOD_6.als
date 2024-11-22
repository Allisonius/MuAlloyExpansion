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
(some t: (one Teacher),p: (one Person) {
(((((Class))->(p->((Group)))) in Groups) => ((t->((Class))) in Teaches))
})
}





