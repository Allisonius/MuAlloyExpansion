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
(all t: (one Teacher),s: (one Student),c: (one Class) {
((Teaches in (t->c)) && ((t->s) in Tutors) && ((s->c) !in Teaches))
})
}





