using Plots
using DataFrames
#using GR
pyplot()
v = 100
g = 9.8
Θ = [pi/6, pi/3, pi/4]
T = Vector(0:18)
#str = ["p1", "p2", "p3"]

fig = plot()
    for θ in Θ
        x = []
        y = []
        for t in T
            X = v * t * cos(θ)
            Y = v * t * sin(θ) - 0.5 * g * t^2
            push!(x, X)
            push!(y, Y)
        end
        y[y .< 0] .= 0
        df0 = DataFrame(X=x,Y=y)
        df1= df0[(df0[:Y].>0),:]
        #println(df1)
        plot!(x,y, marker = (:circle, 2, 0.9, :black, stroke(5, 0.2, :dot)), minorgrid = true, 
        minorticks = true, minorgridalpha = 0.3, gridalpha = 0.7, lw = 2)
        
    end
h = plot!(fig, label = ["p-1" "p-2" "p-3"] , fg_legend = :transparent, legend = :topright, title="projectile motion")
xlabel!("time")
ylabel!("height")
display(h)
readline()