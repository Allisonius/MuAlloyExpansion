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
(one s: (one Student),g: (one Group) {
(some t: (one Teacher),c: (one Class) {
((((c->(t->g)) in Groups) && ((t->c) in Teaches)) => ((t->s) in Tutors))
})
})
}





