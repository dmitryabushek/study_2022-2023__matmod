using Plots 
using DifferentialEquations

function one(du, u, p, t) 
	du[1] = -0.45 * u[1] - 0.86 * u[2] + sin(t+1)
	du[2] = -0.49 * u[1] - 0.73 * u[2] + cos(t+2)
end 

function two(du, u, p, t) 
	du[1] = -0.34 * u[1] - 0.81 * u[2] + sin(2t)
	du[2] = -0.22 * u[1] - 0.91 * u[2] + cos(t)
end 

const people = Float64[30000, 17000]
const prom1 = [0.0, 3.0]
const prom2 = [0.0, 0.0007]

prob1 = ODEProblem(one, people, prom1)
prob2 = ODEProblem(two, people, prom2)

sol1 = solve(prob1, dtmax = 0.1)
sol2 = solve(prob2, dtmax = 0.000001)

A1 = [u[1] for u in sol1.u]
A2 = [u[1] for u in sol1.u]
T1 = [t for t in sol1.t]
A3 = [u[1] for u in sol2.u]
A4 = [u[1] for u in sol2.u]
T2 = [t for t in sol2.t]

plt1 = plot(dpi = 300, legend= true, bg =:white)
plot!(plt1, xlabel="Время", ylabel="Численность", title="Модель боевых действий - случай 1", legend=:outerbottom)
plot!(plt1, T1, A1, label="Численность армии X", color =:red)
plot!(plt1, T1, A2, label="Численность армии Y", color =:green)
savefig(plt1, "lab03_1.png")

plt2 = plot(dpi = 1200, legend= true, bg =:white)
plot!(plt2, xlabel="Время", ylabel="Численность", title="Модель боевых действий - случай 2", legend=:outerbottom)
plot!(plt2, T2, A3, label="Численность армии X", color =:red)
plot!(plt2, T2, A4, label="Численность армии Y", color =:green)
savefig(plt2, "lab03_2.png")
