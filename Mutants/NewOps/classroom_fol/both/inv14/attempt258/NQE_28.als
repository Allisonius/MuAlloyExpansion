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
(some c: (one Class),g: (one Group) {
(all ps: (one Person),st: (one Student) {
(some t: (one Teacher) {
((((c->(ps->g)) in Groups) && ((t->c) in Teaches)) => ((t->st) in Tutors))
})
})
})
}





