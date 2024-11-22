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
(lone u,s: (one User) {
((s in (u.suggested)) <=> ((u !in (follows.s)) && (s in ((u.follows).follows))))
})
}





