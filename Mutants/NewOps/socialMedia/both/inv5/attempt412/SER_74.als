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
pred inv5[] {
((all x: (one Influencer) {
(all y: (one (User - x)) {
(y in (follows.x))
})
}) && (all y: (one (User - Influencer)) {
(y in (follows.Day))
}))
}





