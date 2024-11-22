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
(all p: (one Student),c: (one Class),t: (one Teacher) {
(((t->p) in Tutors) => ((some g: (one Group) {
((c->(p->g)) in Groups)
}) && ((t->c) in Teaches)))
})
}





