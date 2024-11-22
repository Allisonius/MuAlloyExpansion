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
(all u: (one User) {
((((User)) in (u.suggested)) => (one u2: (one User) {
((u2 in (u.follows)) && (((User)) in (u2.follows)) && (((User)) !in (u.follows)) && (u !in ((User))))
}))
})
}





