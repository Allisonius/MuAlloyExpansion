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
(some c: (one Class),t: (one Teacher) {
(some s: (one Teacher),g: (one Group) {
(((c->(s->g)) in Groups) => ((t->c) in Teaches))
})
})
}





