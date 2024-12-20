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
pred inv15[] {
(all s: (one Person) {
(all c: (one Class) {
(all g: (one Group) {
((all t: (one Teacher) {
(((t->c) in Teaches) => ((t->s) in Tutors))
}) => ((c->(s->g)) in Groups))
})
})
})
}





