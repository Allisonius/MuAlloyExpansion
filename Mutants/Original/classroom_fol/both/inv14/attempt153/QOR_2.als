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
(no c: (one Class),t: (one Teacher),g: (one Group) {
(some s: (one Student) {
((((t->c) in Teaches) && ((c->(s->g)) in Groups)) => ((t->s) in Tutors))
})
})
}





