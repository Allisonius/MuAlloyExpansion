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
(all c: (one Class),s: (one Group) {
(some t: (one Teacher),g: (one Group) {
(((t->c) in Teaches) => ((c->(s->g)) in Groups))
})
})
}





