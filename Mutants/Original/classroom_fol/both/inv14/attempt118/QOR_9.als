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
pred inv14[] {
(all c: (one Class),s: (one Student),s: (one Teacher) {
(one g: (one Group),t: (one Teacher) {
((s in ((c.Groups).Group)) && ((c->(t->g)) in Groups))
})
})
}





