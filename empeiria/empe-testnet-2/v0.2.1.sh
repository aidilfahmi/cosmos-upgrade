cd $HOME
curl -LO https://github.com/empe-io/empe-chain-releases/raw/master/v0.2.1/emped_v0.2.1_linux_amd64.tar.gz
tar -xvf emped_v0.2.1_linux_amd64.tar.gz
rm emped_v0.2.1_linux_amd64.tar.gz
chmod +x emped
sudo systemctl stop emped
sudo mv emped $(which emped)
sudo systemctl restart emped && sudo journalctl -u emped -f
