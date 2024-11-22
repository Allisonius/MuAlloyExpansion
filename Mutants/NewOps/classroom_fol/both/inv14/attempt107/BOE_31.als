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
(all p: (one Person),c: (one Class),t: (one Teacher) {
(((t->p) in Tutors) => ((all g: (one Group) {
((c->(p->g)) in Groups)
}) && ((t->c) in Teaches)))
})
}





