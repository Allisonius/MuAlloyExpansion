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
((some c: (one Class),g: (one Group) {
((Groups in (c->(p->g))) && ((t->c) in Teaches))
}) => ((t->p) in Tutors))
})
})
}





