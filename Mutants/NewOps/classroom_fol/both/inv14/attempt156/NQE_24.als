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
(some g: (one Group),t: (one Teacher) {
(all s: (one Student),c: (one Class) {
((((t->c) in Teaches) && ((c->(s->g)) in Groups)) => ((t->s) in Tutors))
})
})
}





