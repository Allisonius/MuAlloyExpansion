module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv8[] {
(all u: (one User) {
(((((u.follows).posts) + (((u.(~suggested)).posts) & Ad)) in ((u.sees) & Ad)) && (no (follows & iden)))
})
}





