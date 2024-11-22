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
(all user,suggest: (one univ) {
(((user in User) && (suggest in User) && ((user->suggest) in suggested)) => (some followed: (one univ) {
(((~(user->followed)) in follows) && ((followed->suggest) in follows) && (!((user->suggest) in follows)))
}))
})
}





