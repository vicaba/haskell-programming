(λxyz.xz(yz))(λmn.m)(λp.p)
(λxλyλz.xz(yz))(λmλn.m)(λp.p)
(λyλz.(λmλn.m)z(yz))(λp.p)
λz.(λmλn.m)z((λp.p)z)
λz.(λn.z)((λp.p)z)
λz.(λn.z)(z)
λz.z

Ex1. b)
Ex2. c)
Ex3. b)

1.11 Exercices
Combinators
1. Yes
2. No
3. Yes
4. Yes
5. No

Normal form or divergence?
1. Normal
2. Diverge
3. Normal

Beta Reduce
1.
(λabc.cba)zz(λwv.w)
	= (λaλbλc.cba)zz(λwλv.w)
	= [a := z]
	= (λbλc.cbz)z(λwλv.w)
	= [b := z]
	= (λc.czz)(λwλv.w)
	= [c := (λwλv.w)]
	= (λwλv.w)zz
	= [w := z]
	= (λv.z)z
	= [v := z]
	= z
	
2.
(λx.λy.xyy)(λa.a)b
	= [x := (λa.a)]
	= (λy.(λa.a)yy)b
	= [y := b]
	= (λa.a)bb
	
3.
(λy.y)(λx.xx)(λz.zq)
	= [y := (λx.xx)]
	= (λx.xx)(λz.zq)
	= [x := (λz.zq)]
	= (λz.zq)(λz.zq)
	= [z := (λz.zq)]
	= (λz.zq)q
	= [z := q]
	= qq
	
4.
(λz.z)(λz.zz)(λz.zy)
	= [z := (λz.zz)]
	= (λz.zz)(λz.zy)
	= [z := (λz.zy)]
	= (λz.zy)(λz.zy)
	= [z := (λz.zy)]
	= (λz.zy)y
	= [z := y]
	= yy
	
5.
(λx.λy.xyy)(λy.y)y
	= [x := (λy.y)]
	= (λy.(λy.y)yy)y
	= [y := y]
	= (λy.y)yy
	= yy

6.
(λa.aa)(λb.ba)c
	= [a := (λb.ba)]
	= (λb.ba)(λb.ba)c
	= (λb.ba)ac
	= aac
	
7.
(λxyz.xz(yz))(λx.z)(λx.a)
	= (λxλyλz.xz(yz))(λx.z)(λx.a)
	= [x := (λx.z)]
	= (λyλz'.(λx.z)z'(yz'))(λx.a)
	= [y := (λx.a)]
	= (λz'.(λx.z)z'((λx.a)z'))
	= [x := z']
	= (λz'.z((λx.a)z'))
	= [x := z']
	= (λz'.z(a))
	= λz'.za


