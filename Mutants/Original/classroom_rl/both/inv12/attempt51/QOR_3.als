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
(no c: (one Class) {
((some ((Teaches.c) & Teacher)) && (some g: (one Group),p: (one Person) {
((c->(p->g)) in Groups)
}))
})
}





