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
(some s: (one Student),g: (one Group) {
(no c: (one Class) {
(some t: (one Teacher) {
(((c->(s->g)) in Groups) && ((t->c) !in Teaches))
})
})
})
}





