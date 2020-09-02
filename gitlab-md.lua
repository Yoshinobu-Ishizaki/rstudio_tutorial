function Math(el)
    if el.mathtype == "InlineMath" then
        return {pandoc.RawInline("html","$`"), pandoc.RawInline("html",el.text), pandoc.RawInline("html","`$")}
    else
        return {pandoc.RawInline("html","```math"), pandoc.RawInline("html",el.text),pandoc.RawInline("html","```")}
    end
end
