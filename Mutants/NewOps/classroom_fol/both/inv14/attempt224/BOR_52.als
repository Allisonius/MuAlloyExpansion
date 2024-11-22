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
(all s: (one Person) {
(all t: (one Person) {
((all c: (one Class) {
((all g: (one Group) {
((c->(s->g)) = Groups)
}) && ((t->c) in Teaches))
}) => ((t->s) in Tutors))
})
})
}





