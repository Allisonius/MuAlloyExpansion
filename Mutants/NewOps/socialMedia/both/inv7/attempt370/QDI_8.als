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
(all u1,u2: (User & Influencer) {
((u2 in (u1.suggested)) => ((u1 != u2) && (u2 in ((u1.follows).suggested)) && (u2 !in (u1.follows))))
})
}





