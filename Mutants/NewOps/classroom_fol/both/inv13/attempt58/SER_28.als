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
(all t1: (one Teacher),t2: (one Class),s: (one Student) {
(((s->t1) !in Tutors) && ((t1->t2) !in Tutors))
})
}





