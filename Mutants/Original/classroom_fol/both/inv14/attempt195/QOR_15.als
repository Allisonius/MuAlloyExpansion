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
(all p: (one Person) {
(some t: (one Teacher) {
((no c: (one Class),g: (one Group) {
(((c->(p->g)) in Groups) && ((t->c) in Teaches))
}) => ((t->p) in Tutors))
})
})
}





