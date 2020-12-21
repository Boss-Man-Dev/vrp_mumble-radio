description "vRP mumble radio"

dependency "vrp"

server_scripts{ 
  "@vrp/lib/utils.lua",
  "server.lua"
}

client_scripts{ 
  "@vrp/lib/utils.lua",
  "client.lua"
}

files{
  "client_vrp.lua",
}