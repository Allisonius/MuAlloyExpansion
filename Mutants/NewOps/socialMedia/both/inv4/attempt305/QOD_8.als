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
pred inv4[] {
(all p: (one Photo) {
((((((User))->p) in sees) && (p !in Ad)) => (some u2: (one User) {
(((((User))->u2) in follows) && ((u2->p) in posts))
}))
})
}





