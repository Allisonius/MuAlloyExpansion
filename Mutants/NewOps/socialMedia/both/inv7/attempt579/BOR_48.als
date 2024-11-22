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
(all u_followed: (one (follows.u)) {
(all sugg: (one (follows.u_followed)) {
((sugg != (follows.u)) => (sugg in (u.suggested)))
})
})
})
}





