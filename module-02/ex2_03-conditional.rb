# Estrutura condicional If/Else

sexo = 'M'

if sexo == 'M'
 puts 'Masculino'
else
 puts 'Feminino'
end

# Estrutura condicional ternária

sexo = 'F'

sexo == 'M' ? (puts 'Masculino') : (puts 'Feminino')

# Estrutura condicional case

idade = 15

case idade
when 0..2
   puts "bebê"
when 3..12
   puts "criança"
when 13..18
   puts "adolescente"
else
   puts "adulto"
end
