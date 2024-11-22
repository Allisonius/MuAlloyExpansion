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
(all u,x: (User - Influencer) {
(all s: (one (u.follows)) {
((x in (u.suggested)) => (x in (s.follows)))
})
})
}





