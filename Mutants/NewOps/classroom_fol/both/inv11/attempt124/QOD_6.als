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
(some t: (one Teacher),p: (one Person),g: (one Group) {
(((((Class))->(p->g)) in Groups) => ((t->((Class))) in Teaches))
})
}





