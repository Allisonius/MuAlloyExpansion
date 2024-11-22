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
((all user: (one User) {
(user !in (user.suggested))
}) && (all user1,user2: (one User) {
((user2 in (user1.suggested)) => (user2 !in (user1.follows)))
}) && (all user1,user2,user3: (one User) {
(((user3 !in (user1.follows)) && ((user2.follows) in user3) && (user2 in (user1.follows))) => (user3 in (user1.suggested)))
}))
}





