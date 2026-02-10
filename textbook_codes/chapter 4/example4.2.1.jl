using Images, Plots

# Carregando a imagem colorida (aqui pressupomos que a Figura 3.1 está salva como "tapete.jpg")
img = load("tapete.jpg")

# Conversão para escala de cinzas
img_gray = Gray.(img)

# Salvando a nova imagem
save("tapete_gray.jpg", img_gray)

# Visualização do Histograma
p1 = histogram(reshape(Float64.(img_gray), :), 
          bins=256, 
          title="Histograma em Tons de Cinza", # Título
          label="Frequencia", # Rótulo da legenda
          xlabel="Luminância normalizada", # Rótulo eixo x
          ylabel="Quantidade de pixels", # Rótulo eixo y
          color=:gray,
          xlims=(0,1))

# Salvando a imagem gerada
savefig(p1, "hist_gray.png")
