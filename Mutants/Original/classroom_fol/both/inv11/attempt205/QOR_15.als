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
(no c: (one Class) {
(some t: (one Teacher) {
(some s: (one Student) {
(no g: (one Group) {
(((c->(s->g)) in Groups) && ((t->c) in Teaches))
})
})
})
})
}





