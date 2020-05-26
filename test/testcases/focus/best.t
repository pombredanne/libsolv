repo system 0 testtags <inline>
#>=Pkg: A 1 1 noarch
#>=Pkg: A2 1 1 noarch
#>=Pkg: D 1 1 noarch
repo available 0 testtags <inline>
#>=Pkg: A 1 1 noarch
#>=Pkg: A 2 1 noarch
#>=Pkg: B 1 1 noarch
#>=Req: A = 1
#>=Pkg: B 2 1 noarch
#>=Req: A = 2
#>=Pkg: A2 1 1 noarch
#>=Pkg: A2 2 1 noarch
#>=Pkg: B2 1 1 noarch
#>=Req: A2 = 1
#>=Pkg: B2 2 1 noarch
#>=Req: A2 = 2
#>=Pkg: C 1 1 noarch
#>=Req: B2
#>=Pkg: D 2 1 noarch
system i686 rpm system
solverflags focusbest

job install name B
job install name C
result transaction,problems <inline>
#>install B-2-1.noarch@available
#>install B2-2-1.noarch@available
#>install C-1-1.noarch@available
#>upgrade A-1-1.noarch@system A-2-1.noarch@available
#>upgrade A2-1-1.noarch@system A2-2-1.noarch@available
