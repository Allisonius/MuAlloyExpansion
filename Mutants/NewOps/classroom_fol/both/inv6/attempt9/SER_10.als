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
pred inv6[] {
(all p: (one Group),c: (one Class),g: (one Group) {
((p in Teacher) => ((c->(p->g)) in Groups))
})
}





