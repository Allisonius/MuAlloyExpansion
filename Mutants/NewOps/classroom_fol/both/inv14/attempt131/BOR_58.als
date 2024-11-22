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
(all s: (one Student),c: (one Class) {
(some t: (one Teacher),g: (one Group) {
((((t->s) in Tutors) && ((c->(s->g)) != Groups)) => ((t->c) in Teaches))
})
})
}





