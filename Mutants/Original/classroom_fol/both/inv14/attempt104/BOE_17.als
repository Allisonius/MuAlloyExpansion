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
(all s: (one Student) {
(some g: (one Group),c: (one Class),t: (one Teacher) {
((Groups in (c->(s->g))) && ((t->c) in Teaches) && ((t->s) in Tutors))
})
})
}





