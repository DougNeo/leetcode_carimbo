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