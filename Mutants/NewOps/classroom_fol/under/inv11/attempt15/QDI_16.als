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
(all s: (Person + Teacher) {
(all g: (one Group) {
(((c->(s->g)) in Groups) => (some t: (one Teacher) {
((t->c) in Teaches)
}))
})
})
})
}





