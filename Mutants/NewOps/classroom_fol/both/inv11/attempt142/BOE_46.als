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
(all c: (one Class),t: (one Teacher),s: (one Student) {
(some g: (one Group) {
((Teaches in (t->c)) => ((c->(s->g)) in Groups))
})
})
}





