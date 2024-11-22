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
(all c: (one Class) {
(some g: (one Group) {
((some t: (one Teacher) {
(((t->c) in Teaches) => ((t->s) in Tutors))
}) => ((c->(s->g)) in Groups))
})
})
})
}





