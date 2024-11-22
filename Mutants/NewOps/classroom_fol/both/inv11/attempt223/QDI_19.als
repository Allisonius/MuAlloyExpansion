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
pred inv11[] {
(all c: (one Class) {
((some p: (Person - Student),g: (one Group) {
((c->(p->g)) in Groups)
}) => (some t: (one Teacher),g: (one Group) {
((c->(t->g)) in Groups)
}))
})
}





