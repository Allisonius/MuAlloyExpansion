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
((all user: (one Influencer) {
(user !in (user.suggested))
}) && (all user1,user2: (one (User + Influencer)) {
(((user2 in (user1.follows)) && (user1 in (user2.follows))) => (user2 !in (user1.suggested)))
}) && (all user1,user3: (one (User + Influencer)) {
((user3 in (user1.suggested)) => (user3 in ((user1.follows).follows)))
}))
}





