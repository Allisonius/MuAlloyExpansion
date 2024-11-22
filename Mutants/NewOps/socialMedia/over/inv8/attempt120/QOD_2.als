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
pred inv8[] {
(((((Ad)) in (((User)).sees)) => ((((Ad)) in (((User)).posts)) && (((User)) in ((((User)).follows) + (((User)).suggested))))) && (all u: (one User) {
(u !in (u.suggested))
}))
}





