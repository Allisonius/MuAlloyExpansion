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
(some t: (one Teacher),s: (one Student) {
(((t->s) in Teaches) => ((s->t) !in Tutors))
})
}





