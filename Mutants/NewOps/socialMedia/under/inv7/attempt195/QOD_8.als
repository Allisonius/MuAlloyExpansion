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
(all u2: (one (((User)).suggested)) {
((u2 in ((((User)).follows).follows)) && (u2 !in (((User)).follows)))
})
}





