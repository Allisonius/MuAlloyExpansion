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
((some ((Teaches.((Class))) & Person)) && (some g: (one Group),p: (one Person) {
((((Class))->(p->g)) in Groups)
}))
}





