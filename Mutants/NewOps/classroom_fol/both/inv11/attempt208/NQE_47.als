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
(some g: (one Group) {
(all s: (one Student) {
(some t: (one Teacher) {
(all c: (one Class) {
(((c->(s->g)) in Groups) => ((t->c) in Teaches))
})
})
})
})
}





