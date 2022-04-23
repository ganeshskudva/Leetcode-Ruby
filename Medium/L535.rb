require 'digest'

# Encodes a URL to a shortened URL.
#
# @param {string} longUrl
# @return {string}
@map = {}

def encode(longUrl)
  key = Digest::SHA256.hexdigest(longUrl)
  @map[key.to_sym] = longUrl
  key
end

# Decodes a shortened URL to its original URL.
#
# @param {string} shortUrl
# @return {string}
def decode(shortUrl)
  @map[shortUrl.to_sym]
end


# Your functions will be called as such:
# decode(encode(url))

