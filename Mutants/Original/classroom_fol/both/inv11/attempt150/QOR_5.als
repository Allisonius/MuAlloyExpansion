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
(some c: (one Class) {
(some t: (one Teacher),s: (one Student),g: (one Group) {
(((c->(s->g)) in Groups) => ((t->c) in Teaches))
})
})
}





