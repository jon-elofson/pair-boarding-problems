def valid_ip?(ip_address)
  ip_array = ip_address.split(".").map(&:to_i)
  ip_array.length == 4 && ip_array.all? { |el| el >= 0 && el <= 255}
end
