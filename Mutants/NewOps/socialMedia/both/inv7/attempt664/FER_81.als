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
((all u: (one (User - Influencer)) {
(((u.suggested) in (((u.follows).follows) - u)) => ((u.suggested) !in (u.suggested)))
}) && (all i: (one Influencer) {
(no (i.suggested))
}))
}





