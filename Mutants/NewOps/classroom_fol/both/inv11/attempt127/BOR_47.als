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
(all c: (one Class),s: (one Student) {
(some t: (one Teacher),g: (one Group) {
(((s->g) in (c.Groups)) && ((t->c) != Teaches))
})
})
}





