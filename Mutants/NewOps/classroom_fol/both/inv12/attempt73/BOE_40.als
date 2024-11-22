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
pred inv12[] {
(all t: (one Teacher),g: (one Group),c: (one Class),s: (one Student) {
((Teaches in (t->c)) => ((c->(s->g)) in Groups))
})
}





