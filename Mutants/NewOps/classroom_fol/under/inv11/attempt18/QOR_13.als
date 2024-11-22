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
((has_groups[c]) => (lone t: (one Teacher) {
((t->c) in Teaches)
}))
})
}
pred has_groups[c: Class] {
(some s: (one Student),g: (one Group) {
((c->(s->g)) in Groups)
})
}





