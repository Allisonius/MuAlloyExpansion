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
((all x: (one User) {
((x.suggested) !in (x.follows))
}) && (all x: (one User) {
((x.suggested) in (lone ((x.follows).follows)))
}) && (all x: (one User) {
(x !in (x.suggested))
}))
}





