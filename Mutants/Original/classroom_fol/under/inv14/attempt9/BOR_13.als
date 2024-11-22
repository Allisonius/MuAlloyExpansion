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
(all c: (one Class),t: (one Teacher),s: (one Person),g: (one Group) {
((((t->c) = Teaches) && ((c->(s->g)) in Groups)) => ((t->s) in Tutors))
})
}





