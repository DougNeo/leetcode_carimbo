# Desafios de Lógica LeetCode para o Carimbo do Passaporte

Este é um projeto que reúne três desafios de lógica do site LeetCode, que são problemas de programação comuns para aprimorar suas habilidades de resolução de problemas e programação. Cada desafio é descrito abaixo, juntamente com um link para o problema no LeetCode.

## Desafio 1: [Length of Last Word - Easy](https://leetcode.com/problems/length-of-last-word/description/)

### Descrição do Desafio 1:
Dada uma string s composta por palavras e espaços, retorne o comprimento da última palavra da string.

### Link da solução no LeetCode:
[Desafio Facil](https://leetcode.com/submissions/detail/1055856884/)

**Exemplo em Ruby:**
```ruby
# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    s.split.last.length
end
```

## Desafio 2: [Validate IP Address - Medium](https://leetcode.com/problems/validate-ip-address/description/)

### Descrição do Desafio 2:
Dada uma string queryIP, retorne "IPv4" se IP for um endereço IPv4 válido, "IPv6" se IP for um endereço IPv6 válido ou "Neither" se IP não for um IP correto de qualquer tipo.

### Link da solução no LeetCode:
[Desafio Medio](https://leetcode.com/submissions/detail/1056494731/)

**Exemplo em Ruby:**
```ruby
# @param {String} query_ip
# @return {String}

def valid_ip_address(query_ip)
  return 'IPv4' if validar_ipv4?(query_ip)
  return 'IPv6' if validar_ipv6?(query_ip)
  'Neither'
end

def validar_ipv4?(query_ip)
  blocos = query_ip.split('.')
  return false if blocos.size != 4 || query_ip.count('.') != 3
  
  blocos.each do |bloco|
    return false if !validar_ipv4_bloco?(bloco)
  end
end

def validar_ipv4_bloco?(bloco)
  valor_inteiro = bloco.to_i
  valor_inteiro >= 0 && valor_inteiro <= 255 && bloco.to_i.to_s == bloco
end

def validar_ipv6?(query_ip)
  blocos = query_ip.split(':')
  return false if blocos.size != 8 || query_ip.count(':') != 7

  blocos.each do |bloco|
    return false if !validar_ipv6_bloco?(bloco)
  end
end

def validar_ipv6_bloco?(bloco)
  bloco.match?(/^[a-fA-F0-9]{1,4}$/)
end
```

## Desafio 3: [Median of Two Sorted Arrays - Hard](https://leetcode.com/problems/median-of-two-sorted-arrays/description/)

### Descrição do Desafio 3:
Dadas duas matrizes classificadas nums1 e nums2 de tamanho n respectivamente, retorne a mediana das duas matrizes classificadas.

### Link da solução no LeetCode:
[Desafio Dificil](https://leetcode.com/submissions/detail/1056541028/)

**Exemplo em Elixir:**
```elixir
defmodule Solution do
  @spec find_median_sorted_arrays(nums1 :: [integer], nums2 :: [integer]) :: float
  def find_median_sorted_arrays(nums1, nums2) do
    nums = nums1 ++ nums2
    nums_em_ordem = Enum.sort(nums)

    if rem(length(nums_em_ordem), 2) == 0 do
        indice_do_meio = div(length(nums_em_ordem),2)
        (Enum.at(nums_em_ordem, indice_do_meio - 1) + Enum.at(nums_em_ordem, indice_do_meio)) / 2.0
    else
        indice_do_meio = div(length(nums_em_ordem), 2)
        Enum.at(nums_em_ordem, indice_do_meio)
    end
  end
end
```    