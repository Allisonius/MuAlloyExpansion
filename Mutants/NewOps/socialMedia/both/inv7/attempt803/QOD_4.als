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
(((user2 in (user1.follows)) && (user1 in (user2.follows))) => (user2 !in (user1.suggested)))
}) && ((((User)) in (((User)).suggested)) => ((((User)) in (((User)).follows)) && (((User)) in (((User)).follows)))))
}





