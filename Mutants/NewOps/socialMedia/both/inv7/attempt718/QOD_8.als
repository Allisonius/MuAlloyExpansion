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
pred inv7[] {
(some u: (one (User - ((User)))) {
((((User)) in (u.suggested)) <=> (some u1: (one (User - ((User)))) {
((u1 != u) && (((User)) in (u1.follows)) && (u1 in (u.follows)) && (((User)) !in (u.follows)))
}))
})
}





