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
(all u: (User & Influencer),cand: (one ((u.follows).follows)) {
((cand in (u.suggested)) && ((u.follows) !in cand))
})
}





