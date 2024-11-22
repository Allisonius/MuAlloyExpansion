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
(some t: (one Teacher) {
(some c: (one Class) {
(some s: (one Student) {
(some g: (one Group) {
((Groups in (c->(s->g))) && ((t->c) in Teaches))
})
})
})
})
}





