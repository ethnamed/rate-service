require! {
    \express
    \superagent : { get }
    \./config.json : { use-proxy, proxy-address, constant-rate-usd, port, ip, token-symbol }
}

proxy = (req, res)->
    err, data <- get proxy-address .end
    return res.status(400).send("#{err}") if err?
    res.send data.body
constant = (req, res)->
    res.send { "#{token-symbol}" : USD: constant-rate-usd }

handler = 
    | use-proxy => proxy
    | _ => constant

express!
   .get \/rate , handler
   .listen port, ip

