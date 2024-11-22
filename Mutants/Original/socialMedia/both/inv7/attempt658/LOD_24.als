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
(all u1,u2,u3: (one (User - Influencer)) {
((u3 in (u1.suggested)) <=> ((u3 !in (u1.follows)) && (u1 != u2) && (u2 != u3) && (u2 in (u1.follows))))
})
}





