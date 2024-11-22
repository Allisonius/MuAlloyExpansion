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
((((((User))->((Photo))) in posts) && (((Photo)) = ((Ad)))) => (all p2: (one Photo),a2: (one Ad) {
(((((User))->p2) in posts) => (p2 = a2))
}))
}





