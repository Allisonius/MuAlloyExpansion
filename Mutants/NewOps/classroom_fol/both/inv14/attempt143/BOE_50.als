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
(some t: (one Teacher),c: (one Class),g: (one Group) {
(((Groups in (c->(t->g))) && ((t->c) in Teaches)) => ((t->s) in Tutors))
})
})
}





