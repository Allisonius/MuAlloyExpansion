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
(((c->(s->((Group)))) in Groups) => (some p: (one Person) {
((p->c) in Teaches)
}))
})
}





