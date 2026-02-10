using Images, Plots

# Carregando a imagem colorida
img = load("tapete.jpg")

# Extraindo componentes R, G e B
r = Float64.(red.(img))
g = Float64.(green.(img))
b = Float64.(blue.(img))

# Gerando histogramas sobrepostos
p = histogram(reshape(r, :), bins=256, alpha=0.5, color=:red,
label="Vermelho")

histogram!(p, reshape(g, :), bins=256, alpha=0.5, color=:green,
label="Verde", xlabel="Luminância normalizada", 
ylabel="Quantidade de pixels")

histogram!(p, reshape(b, :), bins=256, alpha=0.5, color=:blue, 
label="Azul", title="Histograma Colorido")

# Salvando a imagem gerada
savefig(p, "hist_rgb.png")
