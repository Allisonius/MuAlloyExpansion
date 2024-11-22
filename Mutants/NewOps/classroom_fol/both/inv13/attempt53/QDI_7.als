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
pred inv13[] {
(all t: (Person + Teacher),s: (one Student),p: (one Person) {
(((p->t) !in Tutors) && ((s->p) !in Tutors))
})
}





