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
(all sugg: (one (((User)).suggested)) {
(all ff: (one ((((User)).follows).follows)) {
((ff in sugg) && ((((User)).follows) !in sugg) && (((User)) !in sugg))
})
})
}





