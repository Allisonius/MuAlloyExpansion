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
(all u_followed: (one (follows.((User)))) {
(all sugg: (one (follows.u_followed)) {
((sugg !in (follows.((User)))) => (sugg in (((User)).suggested)))
})
})
}





