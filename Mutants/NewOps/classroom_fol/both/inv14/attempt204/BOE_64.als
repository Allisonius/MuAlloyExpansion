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
(some t: (one Teacher) {
((some c: (one Class),g: (one Group) {
(((c->(s->g)) in Groups) && ((t->c) in Teaches))
}) => (Tutors in (t->s)))
})
})
}





