
set_str="4096  87380  $1"
echo $set_str
set_bas="net.ipv4"

tst_tgt=10.0.0.2

# loc

sysctl -w  $set_bas.tcp_wmem="$set_str"

# rem
ssh -i /home/fedora/.ssh/id_rsa fedora@$tst_tgt "sudo sysctl -w  $set_bas.tcp_rmem=\"$set_str\""
